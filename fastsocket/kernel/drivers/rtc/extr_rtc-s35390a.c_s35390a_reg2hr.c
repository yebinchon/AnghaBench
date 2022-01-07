
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {scalar_t__ twentyfourhour; } ;


 int bcd2bin (char) ;

__attribute__((used)) static int s35390a_reg2hr(struct s35390a *s35390a, char reg)
{
 unsigned hour;

 if (s35390a->twentyfourhour)
  return bcd2bin(reg & 0x3f);

 hour = bcd2bin(reg & 0x3f);
 if (reg & 0x40)
  hour += 12;

 return hour;
}
