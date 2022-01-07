
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 rpm_to_reg(int rpm)
{
 if (rpm < 367 || rpm > 0xffff)
  return 0xffff;
 return (1500000 / rpm);
}
