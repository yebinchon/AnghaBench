
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 char* of_get_property (struct device_node*,char*,int*) ;
 int of_node_put (struct device_node*) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static int check_for_h_best_energy(void)
{
 struct device_node *rtas = ((void*)0);
 const char *hypertas, *s;
 int length;
 int rc = 0;

 rtas = of_find_node_by_path("/rtas");
 if (!rtas)
  return 0;

 hypertas = of_get_property(rtas, "ibm,hypertas-functions", &length);
 if (!hypertas) {
  of_node_put(rtas);
  return 0;
 }


 for (s = hypertas; s < hypertas + length; s += strlen(s) + 1) {
  if (!strncmp("hcall-best-energy-1", s, 19)) {
   rc = 1;
   break;
  }
 }
 of_node_put(rtas);
 return rc;
}
