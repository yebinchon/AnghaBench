
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 char* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int seq_printf (struct seq_file*,char*,char const*) ;

__attribute__((used)) static void qpace_show_cpuinfo(struct seq_file *m)
{
 struct device_node *root;
 const char *model = "";

 root = of_find_node_by_path("/");
 if (root)
  model = of_get_property(root, "model", ((void*)0));
 seq_printf(m, "machine\t\t: CHRP %s\n", model);
 of_node_put(root);
}
