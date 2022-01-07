
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {unsigned long data; int function; } ;
struct TYPE_7__ {int sampling_rate; int offset; int* start; int* count; int sample_format; int samples_per_line; } ;
struct saa7146_fh {TYPE_4__ vbi_read_timeout; int vbi_q; TYPE_3__ vbi_fmt; } ;
struct saa7146_dev {TYPE_2__* ext_vv_data; int v4l2_lock; int slock; TYPE_1__* pci; } ;
struct saa7146_buf {int dummy; } ;
struct file {struct saa7146_fh* private_data; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int dev; } ;


 int BRS_CTRL ;
 int DEB_S (char*) ;
 int DEB_VBI (char*) ;
 int EBUSY ;
 int MASK_04 ;
 int MASK_08 ;
 int MASK_20 ;
 int MASK_24 ;
 int MASK_29 ;
 int MASK_30 ;
 int MC2 ;
 int PCI_BT_V1 ;
 int RESOURCE_DMA3_BRS ;
 int SAA7146_USE_PORT_B_FOR_VBI ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_FIELD_SEQ_TB ;
 int V4L2_PIX_FMT_GREY ;
 int init_timer (TYPE_4__*) ;
 int memset (TYPE_3__*,int ,int) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_res_get (struct saa7146_fh*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;
 int vbi_pixel_to_capture ;
 int vbi_qops ;
 int vbi_read_timeout ;
 int vbi_workaround (struct saa7146_dev*) ;
 int videobuf_queue_sg_init (int *,int *,int *,int *,int ,int ,int,struct file*,int *) ;

__attribute__((used)) static int vbi_open(struct saa7146_dev *dev, struct file *file)
{
 struct saa7146_fh *fh = file->private_data;

 u32 arbtr_ctrl = saa7146_read(dev, PCI_BT_V1);
 int ret = 0;

 DEB_VBI(("dev:%p, fh:%p\n",dev,fh));

 ret = saa7146_res_get(fh, RESOURCE_DMA3_BRS);
 if (0 == ret) {
  DEB_S(("cannot get vbi RESOURCE_DMA3_BRS resource\n"));
  return -EBUSY;
 }


 arbtr_ctrl &= ~0x1f0000;
 arbtr_ctrl |= 0x1d0000;
 saa7146_write(dev, PCI_BT_V1, arbtr_ctrl);
 saa7146_write(dev, MC2, (MASK_04|MASK_20));

 memset(&fh->vbi_fmt,0,sizeof(fh->vbi_fmt));

 fh->vbi_fmt.sampling_rate = 27000000;
 fh->vbi_fmt.offset = 248;
 fh->vbi_fmt.samples_per_line = vbi_pixel_to_capture;
 fh->vbi_fmt.sample_format = V4L2_PIX_FMT_GREY;


 fh->vbi_fmt.start[0] = 5;
 fh->vbi_fmt.count[0] = 16;
 fh->vbi_fmt.start[1] = 312;
 fh->vbi_fmt.count[1] = 16;

 videobuf_queue_sg_init(&fh->vbi_q, &vbi_qops,
       &dev->pci->dev, &dev->slock,
       V4L2_BUF_TYPE_VBI_CAPTURE,
       V4L2_FIELD_SEQ_TB,
       sizeof(struct saa7146_buf),
       file, &dev->v4l2_lock);

 init_timer(&fh->vbi_read_timeout);
 fh->vbi_read_timeout.function = vbi_read_timeout;
 fh->vbi_read_timeout.data = (unsigned long)file;


 if ( 0 != (SAA7146_USE_PORT_B_FOR_VBI & dev->ext_vv_data->flags)) {
  saa7146_write(dev, BRS_CTRL, MASK_30|MASK_29 | (7 << 19));
 } else {
  saa7146_write(dev, BRS_CTRL, 0x00000001);

  if (0 != (ret = vbi_workaround(dev))) {
   DEB_VBI(("vbi workaround failed!\n"));

  }
 }


 saa7146_write(dev, MC2, (MASK_08|MASK_24));
 return 0;
}
