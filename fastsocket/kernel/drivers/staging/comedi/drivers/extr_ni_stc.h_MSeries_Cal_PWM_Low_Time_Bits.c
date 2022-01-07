
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned MSeries_Cal_PWM_Low_Time_Bits(unsigned count)
{
 return count & 0xffff;
}
