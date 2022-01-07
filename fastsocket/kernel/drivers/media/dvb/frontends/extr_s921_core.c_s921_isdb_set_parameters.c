
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s921_isdb_t_transmission_mode_params {int dummy; } ;
struct s921_isdb_t {int (* i2c_write ) (int ,int,int) ;int priv_dev; } ;


 int EINVAL ;
 int E_OK ;
 int stub1 (int ,int,int) ;
 int stub2 (int ,int,int) ;
 int stub3 (int ,int,int) ;
 int stub4 (int ,int,int) ;
 int stub5 (int ,int,int) ;
 int stub6 (int ,int,int) ;
 int stub7 (int ,int,int) ;

__attribute__((used)) static int s921_isdb_set_parameters(struct s921_isdb_t *dev, struct s921_isdb_t_transmission_mode_params *params) {

 int ret;




 ret = dev->i2c_write(dev->priv_dev, 0xb0, 0xa0);
 ret = dev->i2c_write(dev->priv_dev, 0xb2, 0x3d);

 if (ret < 0)
  return -EINVAL;

 ret = dev->i2c_write(dev->priv_dev, 0xb3, 0x25);
 if (ret < 0)
  return -EINVAL;

 ret = dev->i2c_write(dev->priv_dev, 0xb4, 0x8b);
 if (ret < 0)
  return -EINVAL;

 ret = dev->i2c_write(dev->priv_dev, 0xb5, 0x4b);
 if (ret < 0)
  return -EINVAL;

 ret = dev->i2c_write(dev->priv_dev, 0xb6, 0x3f);
 if (ret < 0)
  return -EINVAL;

 ret = dev->i2c_write(dev->priv_dev, 0xb7, 0x3f);
 if (ret < 0)
  return -EINVAL;

 return E_OK;
}
