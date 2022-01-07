
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int bsr_add_node (struct device_node*) ;
 struct device_node* of_find_compatible_node (struct device_node*,int *,char*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int bsr_create_devs(struct device_node *bn)
{
 int ret;

 while (bn) {
  ret = bsr_add_node(bn);
  if (ret) {
   of_node_put(bn);
   return ret;
  }
  bn = of_find_compatible_node(bn, ((void*)0), "ibm,bsr");
 }
 return 0;
}
