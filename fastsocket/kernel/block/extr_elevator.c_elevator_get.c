
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_type {int elevator_owner; } ;


 int ELV_NAME_MAX ;
 struct elevator_type* elevator_find (char const*) ;
 int elv_list_lock ;
 int request_module (char*,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (char*,char*,...) ;
 int strcmp (char const*,char*) ;
 int strlen (char*) ;
 int try_module_get (int ) ;

__attribute__((used)) static struct elevator_type *elevator_get(const char *name)
{
 struct elevator_type *e;

 spin_lock(&elv_list_lock);

 e = elevator_find(name);
 if (!e) {
  char elv[ELV_NAME_MAX + strlen("-iosched")];

  spin_unlock(&elv_list_lock);

  if (!strcmp(name, "anticipatory"))
   sprintf(elv, "as-iosched");
  else
   sprintf(elv, "%s-iosched", name);

  request_module("%s", elv);
  spin_lock(&elv_list_lock);
  e = elevator_find(name);
 }

 if (e && !try_module_get(e->elevator_owner))
  e = ((void*)0);

 spin_unlock(&elv_list_lock);

 return e;
}
