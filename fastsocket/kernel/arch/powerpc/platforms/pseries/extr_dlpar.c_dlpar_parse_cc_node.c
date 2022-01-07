
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; } ;
struct cc_workarea {int name_offset; } ;


 int GFP_KERNEL ;
 int kfree (struct device_node*) ;
 int kmalloc (scalar_t__,int ) ;
 struct device_node* kzalloc (int,int ) ;
 int sprintf (int ,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static struct device_node *dlpar_parse_cc_node(struct cc_workarea *ccwa)
{
 struct device_node *dn;
 char *name;

 dn = kzalloc(sizeof(*dn), GFP_KERNEL);
 if (!dn)
  return ((void*)0);





 name = (char *)ccwa + ccwa->name_offset;
 dn->full_name = kmalloc(strlen(name) + 2, GFP_KERNEL);
 if (!dn->full_name) {
  kfree(dn);
  return ((void*)0);
 }

 sprintf(dn->full_name, "/%s", name);
 return dn;
}
