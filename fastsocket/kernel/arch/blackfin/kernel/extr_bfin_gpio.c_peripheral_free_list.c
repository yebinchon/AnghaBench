
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int peripheral_free (unsigned short const) ;

void peripheral_free_list(const unsigned short per[])
{
 u16 cnt;
 for (cnt = 0; per[cnt] != 0; cnt++)
  peripheral_free(per[cnt]);
}
