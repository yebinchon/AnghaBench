
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_wday; int tm_mday; int tm_mon; int tm_year; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int M41T80_DATETIME_REG_SIZE ;
 size_t M41T80_REG_DAY ;
 size_t M41T80_REG_HOUR ;
 size_t M41T80_REG_MIN ;
 size_t M41T80_REG_MON ;
 int M41T80_REG_SEC ;
 size_t M41T80_REG_SSEC ;
 size_t M41T80_REG_WDAY ;
 size_t M41T80_REG_YEAR ;
 int bin2bcd (int) ;
 int dev_err (int *,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int m41t80_set_datetime(struct i2c_client *client, struct rtc_time *tm)
{
 u8 wbuf[1 + M41T80_DATETIME_REG_SIZE];
 u8 *buf = &wbuf[1];
 u8 dt_addr[1] = { M41T80_REG_SEC };
 struct i2c_msg msgs_in[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1,
   .buf = dt_addr,
  },
  {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = M41T80_DATETIME_REG_SIZE - M41T80_REG_SEC,
   .buf = buf + M41T80_REG_SEC,
  },
 };
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1 + M41T80_DATETIME_REG_SIZE,
   .buf = wbuf,
   },
 };


 if (i2c_transfer(client->adapter, msgs_in, 2) < 0) {
  dev_err(&client->dev, "read error\n");
  return -EIO;
 }

 wbuf[0] = 0;

 buf[M41T80_REG_SSEC] = 0;
 buf[M41T80_REG_SEC] =
  bin2bcd(tm->tm_sec) | (buf[M41T80_REG_SEC] & ~0x7f);
 buf[M41T80_REG_MIN] =
  bin2bcd(tm->tm_min) | (buf[M41T80_REG_MIN] & ~0x7f);
 buf[M41T80_REG_HOUR] =
  bin2bcd(tm->tm_hour) | (buf[M41T80_REG_HOUR] & ~0x3f) ;
 buf[M41T80_REG_WDAY] =
  (tm->tm_wday & 0x07) | (buf[M41T80_REG_WDAY] & ~0x07);
 buf[M41T80_REG_DAY] =
  bin2bcd(tm->tm_mday) | (buf[M41T80_REG_DAY] & ~0x3f);
 buf[M41T80_REG_MON] =
  bin2bcd(tm->tm_mon + 1) | (buf[M41T80_REG_MON] & ~0x1f);

 buf[M41T80_REG_YEAR] = bin2bcd(tm->tm_year % 100);

 if (i2c_transfer(client->adapter, msgs, 1) != 1) {
  dev_err(&client->dev, "write error\n");
  return -EIO;
 }
 return 0;
}
