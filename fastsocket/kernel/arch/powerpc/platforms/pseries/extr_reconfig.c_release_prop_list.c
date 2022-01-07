
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property const* value; struct property const* name; struct property* next; } ;


 int kfree (struct property const*) ;

__attribute__((used)) static void release_prop_list(const struct property *prop)
{
 struct property *next;
 for (; prop; prop = next) {
  next = prop->next;
  kfree(prop->name);
  kfree(prop->value);
  kfree(prop);
 }

}
