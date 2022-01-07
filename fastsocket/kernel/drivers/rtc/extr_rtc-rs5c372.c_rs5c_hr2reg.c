
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs5c372 {scalar_t__ time24; } ;


 int bin2bcd (unsigned int) ;

__attribute__((used)) static unsigned rs5c_hr2reg(struct rs5c372 *rs5c, unsigned hour)
{
 if (rs5c->time24)
  return bin2bcd(hour);

 if (hour > 12)
  return 0x20 | bin2bcd(hour - 12);
 if (hour == 12)
  return 0x20 | bin2bcd(12);
 if (hour == 0)
  return bin2bcd(12);
 return bin2bcd(hour);
}
