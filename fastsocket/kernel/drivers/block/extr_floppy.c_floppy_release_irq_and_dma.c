
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int address; } ;


 TYPE_1__* FDCS ;
 int N_FDC ;
 int buffer_max ;
 int buffer_min ;
 int fd_disable_dma () ;
 int fd_dma_mem_free (unsigned long,long) ;
 int fd_free_dma () ;
 int fd_free_irq () ;
 int fd_timeout ;
 int fd_timer ;
 int fdc ;
 int floppy_enable_hlt () ;
 int floppy_release_regions (int) ;
 int * floppy_track_buffer ;
 int floppy_usage_lock ;
 int floppy_work ;
 scalar_t__ irqdma_allocated ;
 int max_buffer_sectors ;
 int * motor_off_timer ;
 int printk (char*,...) ;
 int set_dor (int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timeout_message ;
 scalar_t__ timer_pending (int *) ;
 scalar_t__ usage_count ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static void floppy_release_irq_and_dma(void)
{
 int old_fdc;





 long tmpsize;
 unsigned long tmpaddr;
 unsigned long flags;

 spin_lock_irqsave(&floppy_usage_lock, flags);
 if (--usage_count) {
  spin_unlock_irqrestore(&floppy_usage_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&floppy_usage_lock, flags);
 if (irqdma_allocated) {
  fd_disable_dma();
  fd_free_dma();
  fd_free_irq();
  irqdma_allocated = 0;
 }
 set_dor(0, ~0, 8);



 floppy_enable_hlt();

 if (floppy_track_buffer && max_buffer_sectors) {
  tmpsize = max_buffer_sectors * 1024;
  tmpaddr = (unsigned long)floppy_track_buffer;
  floppy_track_buffer = ((void*)0);
  max_buffer_sectors = 0;
  buffer_min = buffer_max = -1;
  fd_dma_mem_free(tmpaddr, tmpsize);
 }
 old_fdc = fdc;
 for (fdc = 0; fdc < N_FDC; fdc++)
  if (FDCS->address != -1)
   floppy_release_regions(fdc);
 fdc = old_fdc;
}
