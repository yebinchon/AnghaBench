
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 struct device_node* of_find_node_by_path (char*) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static struct device_node *derive_parent(const char *path)
{
 struct device_node *parent;
 char *last_slash;

 last_slash = strrchr(path, '/');
 if (last_slash == path) {
  parent = of_find_node_by_path("/");
 } else {
  char *parent_path;
  int parent_path_len = last_slash - path + 1;
  parent_path = kmalloc(parent_path_len, GFP_KERNEL);
  if (!parent_path)
   return ((void*)0);

  strlcpy(parent_path, path, parent_path_len);
  parent = of_find_node_by_path(parent_path);
  kfree(parent_path);
 }

 return parent;
}
