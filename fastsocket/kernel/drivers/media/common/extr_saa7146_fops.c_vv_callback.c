
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_dev {TYPE_1__* vv_data; } ;
struct TYPE_6__ {int (* irq_done ) (struct saa7146_dev*,int) ;} ;
struct TYPE_5__ {int (* irq_done ) (struct saa7146_dev*,int) ;} ;
struct TYPE_4__ {int vbi_wq; } ;


 int DEB_INT (char*) ;
 int MASK_15 ;
 int MASK_27 ;
 int MASK_28 ;
 int MASK_31 ;
 int MC2 ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 TYPE_3__ saa7146_vbi_uops ;
 TYPE_2__ saa7146_video_uops ;
 int saa7146_write (struct saa7146_dev*,int ,int ) ;
 int stub1 (struct saa7146_dev*,int) ;
 int stub2 (struct saa7146_dev*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void vv_callback(struct saa7146_dev *dev, unsigned long status)
{
 u32 isr = status;

 DEB_INT(("dev:%p, isr:0x%08x\n",dev,(u32)status));

 if (0 != (isr & (MASK_27))) {
  DEB_INT(("irq: RPS0 (0x%08x).\n",isr));
  saa7146_video_uops.irq_done(dev,isr);
 }

 if (0 != (isr & (MASK_28))) {
  u32 mc2 = saa7146_read(dev, MC2);
  if( 0 != (mc2 & MASK_15)) {
   DEB_INT(("irq: RPS1 vbi workaround (0x%08x).\n",isr));
   wake_up(&dev->vv_data->vbi_wq);
   saa7146_write(dev,MC2, MASK_31);
   return;
  }
  DEB_INT(("irq: RPS1 (0x%08x).\n",isr));
  saa7146_vbi_uops.irq_done(dev,isr);
 }
}
