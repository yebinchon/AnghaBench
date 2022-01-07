
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tm_mday; int tm_mon; int tm_year; int tm_wday; int tm_yday; int tm_isdst; int tm_hour; int tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int enabled; int pending; TYPE_1__ time; } ;
struct rs5c372 {int* regs; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int RS5C_CTRL1_AALE ;
 int RS5C_CTRL2_AAFG ;
 size_t RS5C_REG_ALARM_A_HOURS ;
 size_t RS5C_REG_ALARM_A_MIN ;
 size_t RS5C_REG_CTRL1 ;
 size_t RS5C_REG_CTRL2 ;
 int bcd2bin (int) ;
 struct rs5c372* i2c_get_clientdata (struct i2c_client*) ;
 int rs5c_get_regs (struct rs5c372*) ;
 int rs5c_reg2hr (struct rs5c372*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rs5c_read_alarm(struct device *dev, struct rtc_wkalrm *t)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rs5c372 *rs5c = i2c_get_clientdata(client);
 int status;

 status = rs5c_get_regs(rs5c);
 if (status < 0)
  return status;


 t->time.tm_sec = 0;
 t->time.tm_min = bcd2bin(rs5c->regs[RS5C_REG_ALARM_A_MIN] & 0x7f);
 t->time.tm_hour = rs5c_reg2hr(rs5c, rs5c->regs[RS5C_REG_ALARM_A_HOURS]);
 t->time.tm_mday = -1;
 t->time.tm_mon = -1;
 t->time.tm_year = -1;
 t->time.tm_wday = -1;
 t->time.tm_yday = -1;
 t->time.tm_isdst = -1;


 t->enabled = !!(rs5c->regs[RS5C_REG_CTRL1] & RS5C_CTRL1_AALE);
 t->pending = !!(rs5c->regs[RS5C_REG_CTRL2] & RS5C_CTRL2_AAFG);

 return 0;
}
