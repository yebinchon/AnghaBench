
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int TMP401_CONFIG_RANGE ;

__attribute__((used)) static int tmp401_crit_register_to_temp(u8 reg, u8 config)
{
 int temp = reg;

 if (config & TMP401_CONFIG_RANGE)
  temp -= 64;

 return temp * 1000;
}
