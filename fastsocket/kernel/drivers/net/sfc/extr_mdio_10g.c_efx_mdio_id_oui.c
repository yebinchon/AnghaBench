
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



unsigned efx_mdio_id_oui(u32 id)
{
 unsigned oui = 0;
 int i;




 for (i = 0; i < 22; ++i)
  if (id & (1 << (i + 10)))
   oui |= 1 << (i ^ 7);

 return oui;
}
