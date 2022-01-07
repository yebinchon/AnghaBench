
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct i2c_dev {TYPE_1__* adap; } ;
struct i2c_client {struct i2c_adapter* adapter; int * driver; int name; } ;
struct i2c_adapter {int nr; } ;
struct file {struct i2c_client* private_data; } ;
struct TYPE_2__ {int nr; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_NAME_SIZE ;
 struct i2c_dev* i2c_dev_get_by_minor (unsigned int) ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 int i2cdev_driver ;
 unsigned int iminor (struct inode*) ;
 struct i2c_client* kzalloc (int,int ) ;
 int lock_kernel () ;
 int snprintf (int ,int ,char*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int i2cdev_open(struct inode *inode, struct file *file)
{
 unsigned int minor = iminor(inode);
 struct i2c_client *client;
 struct i2c_adapter *adap;
 struct i2c_dev *i2c_dev;
 int ret = 0;

 lock_kernel();
 i2c_dev = i2c_dev_get_by_minor(minor);
 if (!i2c_dev) {
  ret = -ENODEV;
  goto out;
 }

 adap = i2c_get_adapter(i2c_dev->adap->nr);
 if (!adap) {
  ret = -ENODEV;
  goto out;
 }
 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client) {
  i2c_put_adapter(adap);
  ret = -ENOMEM;
  goto out;
 }
 snprintf(client->name, I2C_NAME_SIZE, "i2c-dev %d", adap->nr);
 client->driver = &i2cdev_driver;

 client->adapter = adap;
 file->private_data = client;

out:
 unlock_kernel();
 return ret;
}
