
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct device_node {int dummy; } ;


 int MAX_NR_HVC_CONSOLES ;
 int hvc_get_put_ops ;
 int hvc_instantiate (int const,int,int *) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct device_node* of_find_node_by_name (struct device_node*,char*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int hvc_find_vtys(void)
{
 struct device_node *vty;
 int num_found = 0;

 for (vty = of_find_node_by_name(((void*)0), "vty"); vty != ((void*)0);
   vty = of_find_node_by_name(vty, "vty")) {
  const uint32_t *vtermno;




  if (num_found >= MAX_NR_HVC_CONSOLES) {
   of_node_put(vty);
   break;
  }

  vtermno = of_get_property(vty, "reg", ((void*)0));
  if (!vtermno)
   continue;

  if (of_device_is_compatible(vty, "hvterm1")) {
   hvc_instantiate(*vtermno, num_found, &hvc_get_put_ops);
   ++num_found;
  }
 }

 return num_found;
}
