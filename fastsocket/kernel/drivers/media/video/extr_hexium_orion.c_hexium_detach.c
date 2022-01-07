
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {int i2c_adapter; int video_dev; } ;


 int DEB_EE (char*) ;
 int hexium_num ;
 int i2c_del_adapter (int *) ;
 int kfree (struct hexium*) ;
 int saa7146_unregister_device (int *,struct saa7146_dev*) ;
 int saa7146_vv_release (struct saa7146_dev*) ;

__attribute__((used)) static int hexium_detach(struct saa7146_dev *dev)
{
 struct hexium *hexium = (struct hexium *) dev->ext_priv;

 DEB_EE(("dev:%p\n", dev));

 saa7146_unregister_device(&hexium->video_dev, dev);
 saa7146_vv_release(dev);

 hexium_num--;

 i2c_del_adapter(&hexium->i2c_adapter);
 kfree(hexium);
 return 0;
}
