
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int getprop (void*,char*,int*,int) ;

void dt_get_reg_format(void *node, u32 *naddr, u32 *nsize)
{
 if (getprop(node, "#address-cells", naddr, 4) != 4)
  *naddr = 2;
 if (getprop(node, "#size-cells", nsize, 4) != 4)
  *nsize = 1;
}
