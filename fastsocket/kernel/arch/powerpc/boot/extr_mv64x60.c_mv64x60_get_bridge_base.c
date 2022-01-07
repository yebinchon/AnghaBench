
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u8 ;
typedef scalar_t__ u32 ;


 void* find_node_by_compatible (int *,char*) ;
 int getprop (void*,char*,scalar_t__*,int) ;

u8 *mv64x60_get_bridge_base(void)
{
 u32 v;
 void *devp;

 devp = find_node_by_compatible(((void*)0), "marvell,mv64360");
 if (devp == ((void*)0))
  goto err_out;
 if (getprop(devp, "virtual-reg", &v, sizeof(v)) != sizeof(v))
  goto err_out;

 return (u8 *)v;

err_out:
 return 0;
}
