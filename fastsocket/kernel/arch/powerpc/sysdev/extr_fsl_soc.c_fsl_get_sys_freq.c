
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_type (int *,char*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 int sysfreq ;

u32 fsl_get_sys_freq(void)
{
 struct device_node *soc;
 const u32 *prop;
 int size;

 if (sysfreq != -1)
  return sysfreq;

 soc = of_find_node_by_type(((void*)0), "soc");
 if (!soc)
  return -1;

 prop = of_get_property(soc, "clock-frequency", &size);
 if (!prop || size != sizeof(*prop) || *prop == 0)
  prop = of_get_property(soc, "bus-frequency", &size);

 if (prop && size == sizeof(*prop))
  sysfreq = *prop;

 of_node_put(soc);
 return sysfreq;
}
