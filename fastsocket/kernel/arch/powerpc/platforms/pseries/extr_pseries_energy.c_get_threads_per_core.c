
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int nr_threads_per_core ;
 struct device_node* of_find_node_by_type (int *,char*) ;
 int* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void get_threads_per_core(void)
{
 struct device_node *dn = ((void*)0);
 int len;
 const int *intserv;

 nr_threads_per_core = 1;

 dn = of_find_node_by_type(((void*)0), "cpu");
 intserv = of_get_property(dn, "ibm,ppc-interrupt-server#s", &len);
 if (intserv)
  nr_threads_per_core = len / sizeof(int);

 of_node_put(dn);
}
