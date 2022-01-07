
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {unsigned int partition_number; int partition_name; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void ibmvfc_gather_partition_info(struct ibmvfc_host *vhost)
{
 struct device_node *rootdn;
 const char *name;
 const unsigned int *num;

 rootdn = of_find_node_by_path("/");
 if (!rootdn)
  return;

 name = of_get_property(rootdn, "ibm,partition-name", ((void*)0));
 if (name)
  strncpy(vhost->partition_name, name, sizeof(vhost->partition_name));
 num = of_get_property(rootdn, "ibm,partition-no", ((void*)0));
 if (num)
  vhost->partition_number = *num;
 of_node_put(rootdn);
}
