
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int ENODEV ;
 struct device_node* of_find_compatible_node (int *,char*,char*) ;
 int of_node_put (struct device_node*) ;

int macio_probe(void)
{
 struct device_node *np;

 np = of_find_compatible_node(((void*)0), "adb", "chrp,adb0");
 if (np) {
  of_node_put(np);
  return 0;
 }
 return -ENODEV;
}
