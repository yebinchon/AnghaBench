
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {unsigned char tm_year; unsigned char tm_wday; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_msg {int len; unsigned char* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int buf ;


 int EIO ;
 int I2C_M_RD ;
 void* bcd2bin (unsigned char) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int pcf8583_get_datetime(struct i2c_client *client, struct rtc_time *dt)
{
 unsigned char buf[8], addr[1] = { 1 };
 struct i2c_msg msgs[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1,
   .buf = addr,
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = 6,
   .buf = buf,
  }
 };
 int ret;

 memset(buf, 0, sizeof(buf));

 ret = i2c_transfer(client->adapter, msgs, 2);
 if (ret == 2) {
  dt->tm_year = buf[4] >> 6;
  dt->tm_wday = buf[5] >> 5;

  buf[4] &= 0x3f;
  buf[5] &= 0x1f;

  dt->tm_sec = bcd2bin(buf[1]);
  dt->tm_min = bcd2bin(buf[2]);
  dt->tm_hour = bcd2bin(buf[3]);
  dt->tm_mday = bcd2bin(buf[4]);
  dt->tm_mon = bcd2bin(buf[5]) - 1;
 }

 return ret == 2 ? 0 : -EIO;
}
