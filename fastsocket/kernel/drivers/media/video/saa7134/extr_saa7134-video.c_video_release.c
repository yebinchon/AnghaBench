
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct saa7134_fh* read_buf; } ;
struct saa7134_fh {int prio; int pt_vbi; int pt_cap; TYPE_1__ vbi; TYPE_1__ cap; scalar_t__ radio; struct saa7134_dev* dev; } ;
struct saa7134_dev {int prio; int pci; int slock; } ;
struct saa6588_command {int dummy; } ;
struct file {struct saa7134_fh* private_data; } ;


 int RESOURCE_OVERLAY ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO ;
 int SAA6588_CMD_CLOSE ;
 int SAA7134_OFMT_DATA_A ;
 int SAA7134_OFMT_DATA_B ;
 int SAA7134_OFMT_VIDEO_A ;
 int SAA7134_OFMT_VIDEO_B ;
 int buffer_release (TYPE_1__*,struct saa7134_fh*) ;
 int core ;
 int ioctl ;
 int kfree (struct saa7134_fh*) ;
 scalar_t__ res_check (struct saa7134_fh*,int ) ;
 int res_free (struct saa7134_dev*,struct saa7134_fh*,int ) ;
 int s_power ;
 int saa7134_pgtable_free (int ,int *) ;
 int saa_andorb (int ,int,int ) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_preview (struct saa7134_dev*,struct saa7134_fh*) ;
 int v4l2_prio_close (int *,int ) ;
 int videobuf_mmap_free (TYPE_1__*) ;
 int videobuf_stop (TYPE_1__*) ;
 int videobuf_streamoff (TYPE_1__*) ;

__attribute__((used)) static int video_release(struct file *file)
{
 struct saa7134_fh *fh = file->private_data;
 struct saa7134_dev *dev = fh->dev;
 struct saa6588_command cmd;
 unsigned long flags;


 if (res_check(fh, RESOURCE_OVERLAY)) {
  spin_lock_irqsave(&dev->slock,flags);
  stop_preview(dev,fh);
  spin_unlock_irqrestore(&dev->slock,flags);
  res_free(dev,fh,RESOURCE_OVERLAY);
 }


 if (res_check(fh, RESOURCE_VIDEO)) {
  videobuf_streamoff(&fh->cap);
  res_free(dev,fh,RESOURCE_VIDEO);
 }
 if (fh->cap.read_buf) {
  buffer_release(&fh->cap,fh->cap.read_buf);
  kfree(fh->cap.read_buf);
 }


 if (res_check(fh, RESOURCE_VBI)) {
  videobuf_stop(&fh->vbi);
  res_free(dev,fh,RESOURCE_VBI);
 }


 saa_andorb(SAA7134_OFMT_VIDEO_A, 0x1f, 0);
 saa_andorb(SAA7134_OFMT_VIDEO_B, 0x1f, 0);
 saa_andorb(SAA7134_OFMT_DATA_A, 0x1f, 0);
 saa_andorb(SAA7134_OFMT_DATA_B, 0x1f, 0);

 saa_call_all(dev, core, s_power, 0);
 if (fh->radio)
  saa_call_all(dev, core, ioctl, SAA6588_CMD_CLOSE, &cmd);


 videobuf_mmap_free(&fh->cap);
 videobuf_mmap_free(&fh->vbi);
 saa7134_pgtable_free(dev->pci,&fh->pt_cap);
 saa7134_pgtable_free(dev->pci,&fh->pt_vbi);

 v4l2_prio_close(&dev->prio, fh->prio);
 file->private_data = ((void*)0);
 kfree(fh);
 return 0;
}
