
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int parent; int kref; int full_name; } ;


 int GFP_KERNEL ;
 int OF_DYNAMIC ;
 int kfree (struct device_node*) ;
 int kmalloc (scalar_t__,int ) ;
 int kref_init (int *) ;
 struct device_node* kzalloc (int,int ) ;
 int of_node_get (struct device_node*) ;
 int of_node_set_flag (struct device_node*,int ) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct device_node *new_node(const char *path,
  struct device_node *parent)
{
 struct device_node *np = kzalloc(sizeof(*np), GFP_KERNEL);

 if (!np)
  return ((void*)0);
 np->full_name = kmalloc(strlen(path) + 1, GFP_KERNEL);
 if (!np->full_name) {
  kfree(np);
  return ((void*)0);
 }
 strcpy(np->full_name, path);
 of_node_set_flag(np, OF_DYNAMIC);
 kref_init(&np->kref);
 np->parent = of_node_get(parent);
 return np;
}
