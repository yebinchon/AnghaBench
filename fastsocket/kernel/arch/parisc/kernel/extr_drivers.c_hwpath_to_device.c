
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hardware_path {int* bc; } ;
struct device {int dummy; } ;


 scalar_t__ is_pci_dev (struct device*) ;
 struct device* parse_tree_node (struct device*,int,struct hardware_path*) ;
 struct device root ;

struct device *hwpath_to_device(struct hardware_path *modpath)
{
 int i;
 struct device *parent = &root;
 for (i = 0; i < 6; i++) {
  if (modpath->bc[i] == -1)
   continue;
  parent = parse_tree_node(parent, i, modpath);
  if (!parent)
   return ((void*)0);
 }
 if (is_pci_dev(parent))
  return parent;
 else
  return parse_tree_node(parent, 6, modpath);
}
