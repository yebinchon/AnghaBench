
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



void cx231xx_swab(u16 *from, u16 *to, u16 len)
{
 u16 i;

 if (len <= 0)
  return;

 for (i = 0; i < len / 2; i++)
  to[i] = (from[i] << 8) | (from[i] >> 8);
}
