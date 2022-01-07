
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 void* SENSORS_LIMIT (int,int,int) ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static u16 LM93_FAN_TO_REG(long rpm)
{
 u16 count, regs;

 if (rpm == 0) {
  count = 0x3fff;
 } else {
  rpm = SENSORS_LIMIT(rpm, 1, 1000000);
  count = SENSORS_LIMIT((1350000 + rpm) / rpm, 1, 0x3ffe);
 }

 regs = count << 2;
 return cpu_to_le16(regs);
}
