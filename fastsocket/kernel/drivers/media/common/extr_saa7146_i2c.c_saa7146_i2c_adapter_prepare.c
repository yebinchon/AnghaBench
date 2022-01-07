
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct saa7146_dev {TYPE_2__* pci; int v4l2_dev; int i2c_bitrate; } ;
struct TYPE_3__ {int * parent; } ;
struct i2c_adapter {int retries; int timeout; int * algo_data; int * algo; TYPE_1__ dev; } ;
struct TYPE_4__ {int dev; } ;


 int DEB_EE (char*) ;
 int MASK_08 ;
 int MASK_24 ;
 int MC1 ;
 int SAA7146_I2C_RETRIES ;
 int SAA7146_I2C_TIMEOUT ;
 int i2c_set_adapdata (struct i2c_adapter*,int *) ;
 int saa7146_algo ;
 int saa7146_i2c_reset (struct saa7146_dev*) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

int saa7146_i2c_adapter_prepare(struct saa7146_dev *dev, struct i2c_adapter *i2c_adapter, u32 bitrate)
{
 DEB_EE(("bitrate: 0x%08x\n",bitrate));


 saa7146_write(dev, MC1, (MASK_08 | MASK_24));

 dev->i2c_bitrate = bitrate;
 saa7146_i2c_reset(dev);

 if (i2c_adapter) {
  i2c_set_adapdata(i2c_adapter, &dev->v4l2_dev);
  i2c_adapter->dev.parent = &dev->pci->dev;
  i2c_adapter->algo = &saa7146_algo;
  i2c_adapter->algo_data = ((void*)0);
  i2c_adapter->timeout = SAA7146_I2C_TIMEOUT;
  i2c_adapter->retries = SAA7146_I2C_RETRIES;
 }

 return 0;
}
