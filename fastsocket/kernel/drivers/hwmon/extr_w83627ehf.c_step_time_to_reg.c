
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ SENSORS_LIMIT (unsigned int,int,int) ;

__attribute__((used)) static inline u8 step_time_to_reg(unsigned int msec, u8 mode)
{
 return SENSORS_LIMIT((mode ? (msec + 50) / 100 :
      (msec + 200) / 400), 1, 255);
}
