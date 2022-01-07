
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int* block; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
struct highlander_i2c_dev {int* buf; int buf_len; scalar_t__ base; int dev; int cmd_complete; } ;


 int EINVAL ;


 char I2C_SMBUS_READ ;
 scalar_t__ SMMR ;
 int SMMR_MODE0 ;
 int SMMR_MODE1 ;
 scalar_t__ SMSMADR ;
 int dev_dbg (int ,char*,int,int ,char,int) ;
 int dev_err (int ,char*,int) ;
 int highlander_i2c_command (struct highlander_i2c_dev*,int ,int) ;
 int highlander_i2c_done (struct highlander_i2c_dev*) ;
 int highlander_i2c_read (struct highlander_i2c_dev*) ;
 int highlander_i2c_write (struct highlander_i2c_dev*) ;
 struct highlander_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int init_completion (int *) ;
 int ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static int highlander_i2c_smbus_xfer(struct i2c_adapter *adap, u16 addr,
      unsigned short flags, char read_write,
      u8 command, int size,
      union i2c_smbus_data *data)
{
 struct highlander_i2c_dev *dev = i2c_get_adapdata(adap);
 int read = read_write & I2C_SMBUS_READ;
 u16 tmp;

 init_completion(&dev->cmd_complete);

 dev_dbg(dev->dev, "addr %04x, command %02x, read_write %d, size %d\n",
  addr, command, read_write, size);




 switch (size) {
 case 129:
  dev->buf = &data->byte;
  dev->buf_len = 1;
  break;
 case 128:
  dev->buf = &data->block[1];
  dev->buf_len = data->block[0];
  break;
 default:
  dev_err(dev->dev, "unsupported command %d\n", size);
  return -EINVAL;
 }




 tmp = ioread16(dev->base + SMMR);
 tmp &= ~(SMMR_MODE0 | SMMR_MODE1);

 switch (dev->buf_len) {
 case 1:

  break;
 case 8:
  tmp |= SMMR_MODE0;
  break;
 case 16:
  tmp |= SMMR_MODE1;
  break;
 case 32:
  tmp |= (SMMR_MODE0 | SMMR_MODE1);
  break;
 default:
  dev_err(dev->dev, "unsupported xfer size %d\n", dev->buf_len);
  return -EINVAL;
 }

 iowrite16(tmp, dev->base + SMMR);


 highlander_i2c_done(dev);


 iowrite16((addr << 1) | read, dev->base + SMSMADR);

 highlander_i2c_command(dev, command, dev->buf_len);

 if (read)
  return highlander_i2c_read(dev);
 else
  return highlander_i2c_write(dev);
}
