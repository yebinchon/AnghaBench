
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int SENSORS_LIMIT (int,int,int) ;

__attribute__((used)) static inline u16 rpm2tach(unsigned long rpm)
{
 if (rpm == 0)
  return 0;

 return SENSORS_LIMIT((90000 * 60) / rpm, 1, 0xFFFF);
}
