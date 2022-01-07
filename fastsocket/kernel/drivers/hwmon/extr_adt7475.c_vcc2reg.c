
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u16 ;


 long SENSORS_LIMIT (long,int ,int) ;

__attribute__((used)) static inline u16 vcc2reg(long vcc)
{
 vcc = SENSORS_LIMIT(vcc, 0, 4396);
 return (vcc * 1000) / 4296;
}
