
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



uint16_t
qla2x00_calc_iocbs_64(uint16_t dsds)
{
 uint16_t iocbs;

 iocbs = 1;
 if (dsds > 2) {
  iocbs += (dsds - 2) / 5;
  if ((dsds - 2) % 5)
   iocbs++;
 }
 return (iocbs);
}
