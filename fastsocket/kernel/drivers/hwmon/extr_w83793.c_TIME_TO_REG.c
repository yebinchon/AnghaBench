
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SENSORS_LIMIT (unsigned long,int ,int) ;

__attribute__((used)) static inline u8 TIME_TO_REG(unsigned long val)
{
 return SENSORS_LIMIT((val + 50) / 100, 0, 0xff);
}
