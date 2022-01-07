
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {scalar_t__ ext_priv; } ;
struct mxb {int i2c_adapter; int vbi_dev; int video_dev; } ;


 int DEB_EE (char*) ;
 scalar_t__ MXB_BOARD_CAN_DO_VBI (struct saa7146_dev*) ;
 int i2c_del_adapter (int *) ;
 int kfree (struct mxb*) ;
 int mxb_num ;
 int saa7146_unregister_device (int *,struct saa7146_dev*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;

__attribute__((used)) static int mxb_detach(struct saa7146_dev *dev)
{
 struct mxb *mxb = (struct mxb *)dev->ext_priv;

 DEB_EE(("dev:%p\n", dev));

 saa7146_unregister_device(&mxb->video_dev,dev);
 if (MXB_BOARD_CAN_DO_VBI(dev))
  saa7146_unregister_device(&mxb->vbi_dev, dev);
 saa7146_vv_release(dev);

 mxb_num--;

 i2c_del_adapter(&mxb->i2c_adapter);
 kfree(mxb);

 return 0;
}
