
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct highlander_i2c_dev {int buf_len; scalar_t__ last_read_time; int buf; int dev; scalar_t__ base; } ;


 int EAGAIN ;
 scalar_t__ SMTRDR ;
 int dev_dbg (int ,char*,int,int ) ;
 int dev_err (int ,char*) ;
 int highlander_i2c_start (struct highlander_i2c_dev*) ;
 scalar_t__ highlander_i2c_wait_for_bbsy (struct highlander_i2c_dev*) ;
 scalar_t__ highlander_i2c_wait_xfer_done (struct highlander_i2c_dev*) ;
 scalar_t__ iic_read_delay ;
 int ioread16 (scalar_t__) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int msleep (int ) ;
 int smbus_read_data (int *,int ,int) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int highlander_i2c_read(struct highlander_i2c_dev *dev)
{
 int i, cnt;
 u16 data[16];

 if (highlander_i2c_wait_for_bbsy(dev))
  return -EAGAIN;

 highlander_i2c_start(dev);

 if (highlander_i2c_wait_xfer_done(dev)) {
  dev_err(dev->dev, "Arbitration loss\n");
  return -EAGAIN;
 }
 if (iic_read_delay && time_before(jiffies, dev->last_read_time +
     msecs_to_jiffies(iic_read_delay)))
  msleep(jiffies_to_msecs((dev->last_read_time +
    msecs_to_jiffies(iic_read_delay)) - jiffies));

 cnt = (dev->buf_len + 1) >> 1;
 for (i = 0; i < cnt; i++) {
  data[i] = ioread16(dev->base + SMTRDR + (i * sizeof(u16)));
  dev_dbg(dev->dev, "read data[%x] 0x%04x\n", i, data[i]);
 }

 smbus_read_data(data, dev->buf, dev->buf_len);

 dev->last_read_time = jiffies;

 return 0;
}
