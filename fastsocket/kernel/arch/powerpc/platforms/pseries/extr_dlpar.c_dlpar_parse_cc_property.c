
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; void* value; int name; } ;
struct cc_workarea {int name_offset; int prop_length; int prop_offset; } ;


 int GFP_KERNEL ;
 int dlpar_free_cc_property (struct property*) ;
 int kstrdup (char*,int ) ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,char*,int) ;

__attribute__((used)) static struct property *dlpar_parse_cc_property(struct cc_workarea *ccwa)
{
 struct property *prop;
 char *name;
 char *value;

 prop = kzalloc(sizeof(*prop), GFP_KERNEL);
 if (!prop)
  return ((void*)0);

 name = (char *)ccwa + ccwa->name_offset;
 prop->name = kstrdup(name, GFP_KERNEL);
 if (!prop->name) {
  dlpar_free_cc_property(prop);
  return ((void*)0);
 }

 prop->length = ccwa->prop_length;
 value = (char *)ccwa + ccwa->prop_offset;
 prop->value = kzalloc(prop->length, GFP_KERNEL);
 if (!prop->value) {
  dlpar_free_cc_property(prop);
  return ((void*)0);
 }

 memcpy(prop->value, value, prop->length);
 return prop;
}
