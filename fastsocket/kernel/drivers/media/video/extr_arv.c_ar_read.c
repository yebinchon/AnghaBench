
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct file {int dummy; } ;
struct ar_device {long frame_bytes; scalar_t__ size; scalar_t__ mode; int line_buff; int line_bytes; int height; unsigned char** frame; int lock; int wait; scalar_t__ start_capture; } ;
typedef long ssize_t ;
typedef int loff_t ;


 int ARDATA32 ;
 int ARVCR1 ;
 unsigned long ARVCR1_HIEN ;
 unsigned long ARVCR1_NORMAL ;
 unsigned long ARVCR1_QVGA ;
 int ARVHCOUNT ;
 int AR_HEIGHT_VGA ;
 scalar_t__ AR_MODE_INTERLACE ;
 scalar_t__ AR_MODE_NORMAL ;
 scalar_t__ AR_SIZE_QVGA ;
 scalar_t__ AR_SIZE_VGA ;
 int DEBUG (int,char*,...) ;
 long EFAULT ;
 long EINTR ;
 int M32R_DMA0CBCUT_PORTL ;
 int M32R_DMA0CDA_PORTL ;
 int M32R_DMA0CR0_PORTL ;
 int M32R_DMA0CR1_PORTL ;
 int M32R_DMA0CSA_PORTL ;
 int M32R_DMA0RBCUT_PORTL ;
 int M32R_DMA0RDA_PORTL ;
 int M32R_DMA0RSA_PORTL ;
 int M32R_DMAEDET_PORTL ;
 int ar_inl (int ) ;
 int ar_outl (int,int ) ;
 int clear_dma_status () ;
 scalar_t__ copy_to_user (char*,unsigned char*,int) ;
 int cpu_relax () ;
 int current ;
 int disable_dma () ;
 int enable_dma () ;
 int interruptible_sleep_on (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printk (char*) ;
 scalar_t__ signal_pending (int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct ar_device* video_get_drvdata (struct video_device*) ;
 int virt_to_phys (unsigned char*) ;
 int wait_for_vertical_sync (int) ;
 unsigned char* yuv ;

__attribute__((used)) static ssize_t ar_read(struct file *file, char *buf, size_t count, loff_t *ppos)
{
 struct video_device *v = video_devdata(file);
 struct ar_device *ar = video_get_drvdata(v);
 long ret = ar->frame_bytes;
 unsigned long arvcr1 = 0;
 unsigned long flags;
 unsigned char *p;
 int h, w;
 unsigned char *py, *pu, *pv;

 int l;


 DEBUG(1, "ar_read()\n");

 if (ar->size == AR_SIZE_QVGA)
  arvcr1 |= ARVCR1_QVGA;
 if (ar->mode == AR_MODE_NORMAL)
  arvcr1 |= ARVCR1_NORMAL;

 mutex_lock(&ar->lock);
 ar_outl(arvcr1, ARVCR1);
 disable_dma();
 ar_outl(0x8000, M32R_DMAEDET_PORTL);
 ar_outl(0xa0861300, M32R_DMA0CR0_PORTL);
 ar_outl(0x01000000, M32R_DMA0CR1_PORTL);
 ar_outl(ARDATA32, M32R_DMA0CSA_PORTL);
 ar_outl(ARDATA32, M32R_DMA0RSA_PORTL);
 ar_outl(ar->line_bytes, M32R_DMA0CBCUT_PORTL);
 ar_outl(ar->line_bytes, M32R_DMA0RBCUT_PORTL);

 local_irq_save(flags);
 while (ar_inl(ARVHCOUNT) != 0)
  cpu_relax();
 if (ar->mode == AR_MODE_INTERLACE && ar->size == AR_SIZE_VGA) {
  for (h = 0; h < ar->height; h++) {
   wait_for_vertical_sync(h);
   if (h < (AR_HEIGHT_VGA/2))
    l = h << 1;
   else
    l = (((h - (AR_HEIGHT_VGA/2)) << 1) + 1);
   ar_outl(virt_to_phys(ar->frame[l]), M32R_DMA0CDA_PORTL);
   enable_dma();
   while (!(ar_inl(M32R_DMAEDET_PORTL) & 0x8000))
    cpu_relax();
   disable_dma();
   clear_dma_status();
   ar_outl(0xa0861300, M32R_DMA0CR0_PORTL);
  }
 } else {
  for (h = 0; h < ar->height; h++) {
   wait_for_vertical_sync(h);
   ar_outl(virt_to_phys(ar->frame[h]), M32R_DMA0CDA_PORTL);
   enable_dma();
   while (!(ar_inl(M32R_DMAEDET_PORTL) & 0x8000))
    cpu_relax();
   disable_dma();
   clear_dma_status();
   ar_outl(0xa0861300, M32R_DMA0CR0_PORTL);
  }
 }
 local_irq_restore(flags);
 py = yuv;
 pu = py + (ar->frame_bytes / 2);
 pv = pu + (ar->frame_bytes / 4);
 for (h = 0; h < ar->height; h++) {
  p = ar->frame[h];
  for (w = 0; w < ar->line_bytes; w += 4) {
   *py++ = *p++;
   *pu++ = *p++;
   *py++ = *p++;
   *pv++ = *p++;
  }
 }
 if (copy_to_user(buf, yuv, ar->frame_bytes)) {
  printk("arv: failed while copy_to_user yuv.\n");
  ret = -EFAULT;
  goto out_up;
 }
 DEBUG(1, "ret = %d\n", ret);
out_up:
 mutex_unlock(&ar->lock);
 return ret;
}
