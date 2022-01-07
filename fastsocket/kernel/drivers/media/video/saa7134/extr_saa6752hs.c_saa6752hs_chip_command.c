
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
typedef enum saa6752hs_command { ____Placeholder_saa6752hs_command } saa6752hs_command ;


 int EINVAL ;
 int ETIMEDOUT ;
 int HZ ;







 int i2c_master_recv (struct i2c_client*,unsigned char*,int) ;
 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int saa6752hs_chip_command(struct i2c_client *client,
      enum saa6752hs_command command)
{
 unsigned char buf[3];
 unsigned long timeout;
 int status = 0;


 switch(command) {
 case 131:
  buf[0] = 0x00;
  break;

 case 128:
  buf[0] = 0x03;
  break;

 case 129:
  buf[0] = 0x02;
  break;

 case 134:
  buf[0] = 0x04;
  break;

 case 133:
  buf[0] = 0x05;
  break;

 case 130:
  buf[0] = 0x06;
  break;

 case 132:
  buf[0] = 0x07;
  break;

 default:
  return -EINVAL;
 }


 i2c_master_send(client, buf, 1);
 timeout = jiffies + HZ * 3;
 for (;;) {

  buf[0] = 0x10;
  i2c_master_send(client, buf, 1);
  i2c_master_recv(client, buf, 1);

  if (!(buf[0] & 0x20))
   break;
  if (time_after(jiffies,timeout)) {
   status = -ETIMEDOUT;
   break;
  }

  msleep(10);
 }


 msleep(50);

 return status;
}
