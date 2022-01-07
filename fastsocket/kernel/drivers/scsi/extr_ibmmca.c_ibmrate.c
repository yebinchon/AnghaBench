
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *ibmrate(unsigned int speed, int i)
{
 switch (speed) {
 case 0:
  return i ? "5.00" : "10.00";
 case 1:
  return i ? "4.00" : "8.00";
 case 2:
  return i ? "3.33" : "6.66";
 case 3:
  return i ? "2.86" : "5.00";
 case 4:
  return i ? "2.50" : "4.00";
 case 5:
  return i ? "2.22" : "3.10";
 case 6:
  return i ? "2.00" : "2.50";
 case 7:
  return i ? "1.82" : "2.00";
 }
 return "---";
}
