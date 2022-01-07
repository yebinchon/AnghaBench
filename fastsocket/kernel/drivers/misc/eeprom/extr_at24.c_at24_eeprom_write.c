
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {unsigned int* buf; int len; scalar_t__ flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct TYPE_2__ {int flags; int page_size; } ;
struct at24_data {size_t write_max; unsigned int* writebuf; scalar_t__ use_smbus; TYPE_1__ chip; } ;
typedef int ssize_t ;


 int AT24_FLAG_ADDR16 ;
 int ETIMEDOUT ;
 struct i2c_client* at24_translate_offset (struct at24_data*,unsigned int*) ;
 int dev_dbg (int *,char*,size_t,unsigned int,int,unsigned long) ;
 int i2c_smbus_write_i2c_block_data (struct i2c_client*,unsigned int,size_t,char const*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 unsigned long jiffies ;
 int memcpy (unsigned int*,char const*,size_t) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 unsigned int roundup (unsigned int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int write_timeout ;

__attribute__((used)) static ssize_t at24_eeprom_write(struct at24_data *at24, const char *buf,
  unsigned offset, size_t count)
{
 struct i2c_client *client;
 struct i2c_msg msg;
 ssize_t status;
 unsigned long timeout, write_time;
 unsigned next_page;


 client = at24_translate_offset(at24, &offset);


 if (count > at24->write_max)
  count = at24->write_max;


 next_page = roundup(offset + 1, at24->chip.page_size);
 if (offset + count > next_page)
  count = next_page - offset;


 if (!at24->use_smbus) {
  int i = 0;

  msg.addr = client->addr;
  msg.flags = 0;


  msg.buf = at24->writebuf;
  if (at24->chip.flags & AT24_FLAG_ADDR16)
   msg.buf[i++] = offset >> 8;

  msg.buf[i++] = offset;
  memcpy(&msg.buf[i], buf, count);
  msg.len = i + count;
 }






 timeout = jiffies + msecs_to_jiffies(write_timeout);
 do {
  write_time = jiffies;
  if (at24->use_smbus) {
   status = i2c_smbus_write_i2c_block_data(client,
     offset, count, buf);
   if (status == 0)
    status = count;
  } else {
   status = i2c_transfer(client->adapter, &msg, 1);
   if (status == 1)
    status = count;
  }
  dev_dbg(&client->dev, "write %zu@%d --> %zd (%ld)\n",
    count, offset, status, jiffies);

  if (status == count)
   return count;


  msleep(1);
 } while (time_before(write_time, timeout));

 return -ETIMEDOUT;
}
