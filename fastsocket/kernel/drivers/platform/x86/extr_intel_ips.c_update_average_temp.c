
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int temp_decay_factor ;

__attribute__((used)) static u16 update_average_temp(u16 avg, u16 val)
{
 u16 ret;


 ret = (val * 100 / temp_decay_factor) +
  (((temp_decay_factor - 1) * avg) / temp_decay_factor);
 return ret;
}
