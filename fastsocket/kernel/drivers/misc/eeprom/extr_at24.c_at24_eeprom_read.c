
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u8 ;
struct i2c_msg {unsigned int* buf; int len; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct TYPE_2__ {int flags; } ;
struct at24_data {scalar_t__ use_smbus; TYPE_1__ chip; } ;
typedef size_t ssize_t ;
typedef int msg ;


 int AT24_FLAG_ADDR16 ;
 size_t ETIMEDOUT ;
 int I2C_M_RD ;
 size_t I2C_SMBUS_BLOCK_MAX ;
 struct i2c_client* at24_translate_offset (struct at24_data*,unsigned int*) ;
 int dev_dbg (int *,char*,size_t,unsigned int,int,unsigned long) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,unsigned int,size_t,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 size_t io_limit ;
 unsigned long jiffies ;
 int memset (struct i2c_msg*,int ,int) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int write_timeout ;

__attribute__((used)) static ssize_t at24_eeprom_read(struct at24_data *at24, char *buf,
  unsigned offset, size_t count)
{
 struct i2c_msg msg[2];
 u8 msgbuf[2];
 struct i2c_client *client;
 unsigned long timeout, read_time;
 int status, i;

 memset(msg, 0, sizeof(msg));
 client = at24_translate_offset(at24, &offset);

 if (count > io_limit)
  count = io_limit;

 if (at24->use_smbus) {

  if (count > I2C_SMBUS_BLOCK_MAX)
   count = I2C_SMBUS_BLOCK_MAX;
 } else {







  i = 0;
  if (at24->chip.flags & AT24_FLAG_ADDR16)
   msgbuf[i++] = offset >> 8;
  msgbuf[i++] = offset;

  msg[0].addr = client->addr;
  msg[0].buf = msgbuf;
  msg[0].len = i;

  msg[1].addr = client->addr;
  msg[1].flags = I2C_M_RD;
  msg[1].buf = buf;
  msg[1].len = count;
 }






 timeout = jiffies + msecs_to_jiffies(write_timeout);
 do {
  read_time = jiffies;
  if (at24->use_smbus) {
   status = i2c_smbus_read_i2c_block_data(client, offset,
     count, buf);
  } else {
   status = i2c_transfer(client->adapter, msg, 2);
   if (status == 2)
    status = count;
  }
  dev_dbg(&client->dev, "read %zu@%d --> %d (%ld)\n",
    count, offset, status, jiffies);

  if (status == count)
   return count;


  msleep(1);
 } while (time_before(read_time, timeout));

 return -ETIMEDOUT;
}
