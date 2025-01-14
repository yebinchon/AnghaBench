
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct i2c_client {int dummy; } ;


 size_t MAX6900_REG_CENTURY ;
 size_t MAX6900_REG_DT ;
 size_t MAX6900_REG_DW ;
 size_t MAX6900_REG_HR ;
 int MAX6900_REG_LEN ;
 size_t MAX6900_REG_MN ;
 size_t MAX6900_REG_MO ;
 size_t MAX6900_REG_SC ;
 size_t MAX6900_REG_YR ;
 int bcd2bin (int) ;
 int max6900_i2c_read_regs (struct i2c_client*,int*) ;

__attribute__((used)) static int max6900_i2c_read_time(struct i2c_client *client, struct rtc_time *tm)
{
 int rc;
 u8 regs[MAX6900_REG_LEN];

 rc = max6900_i2c_read_regs(client, regs);
 if (rc < 0)
  return rc;

 tm->tm_sec = bcd2bin(regs[MAX6900_REG_SC]);
 tm->tm_min = bcd2bin(regs[MAX6900_REG_MN]);
 tm->tm_hour = bcd2bin(regs[MAX6900_REG_HR] & 0x3f);
 tm->tm_mday = bcd2bin(regs[MAX6900_REG_DT]);
 tm->tm_mon = bcd2bin(regs[MAX6900_REG_MO]) - 1;
 tm->tm_year = bcd2bin(regs[MAX6900_REG_YR]) +
        bcd2bin(regs[MAX6900_REG_CENTURY]) * 100 - 1900;
 tm->tm_wday = bcd2bin(regs[MAX6900_REG_DW]);

 return 0;
}
