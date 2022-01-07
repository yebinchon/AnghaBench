
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 unsigned long SENSORS_LIMIT (unsigned long,int ,int) ;

__attribute__((used)) static inline u8 IN_TO_REG(unsigned long val)
{
 unsigned long nval = SENSORS_LIMIT(val, 0, 4080);
 return (nval + 8) / 16;
}
