
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efivar_entry {int kobj; } ;


 int kobject_put (int *) ;

__attribute__((used)) static inline void
efivar_unregister(struct efivar_entry *var)
{
 kobject_put(&var->kobj);
}
