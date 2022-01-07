
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct efivars {int lock; TYPE_1__* ops; } ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
typedef int efi_char16_t ;
struct TYPE_2__ {scalar_t__ (* get_next_variable ) (unsigned long*,int *,int *) ;} ;


 scalar_t__ EFI_NOT_FOUND ;
 scalar_t__ EFI_SUCCESS ;
 int GFP_KERNEL ;
 struct efivars __efivars ;
 int efivar_create_sysfs_entry (struct efivars*,unsigned long,int *,int *) ;
 int kfree (int *) ;
 int * kzalloc (unsigned long,int ) ;
 int pr_err (char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (unsigned long*,int *,int *) ;
 unsigned long var_name_strnsize (int *,unsigned long) ;
 int variable_is_present (int *,int *) ;

__attribute__((used)) static void efivar_update_sysfs_entries(struct work_struct *work)
{
 struct efivars *efivars = &__efivars;
 efi_guid_t vendor;
 efi_char16_t *variable_name;
 unsigned long variable_name_size = 1024;
 efi_status_t status = EFI_NOT_FOUND;
 bool found;


 while (1) {
  variable_name = kzalloc(variable_name_size, GFP_KERNEL);
  if (!variable_name) {
   pr_err("efivars: Memory allocation failed.\n");
   return;
  }

  spin_lock_irq(&efivars->lock);
  found = 0;
  while (1) {
   variable_name_size = 1024;
   status = efivars->ops->get_next_variable(
       &variable_name_size,
       variable_name,
       &vendor);
   if (status != EFI_SUCCESS) {
    break;
   } else {
    if (!variable_is_present(variable_name,
        &vendor)) {
     found = 1;
     break;
    }
   }
  }
  spin_unlock_irq(&efivars->lock);

  if (!found) {
   kfree(variable_name);
   break;
  } else {
   variable_name_size = var_name_strnsize(variable_name,
              variable_name_size);
   efivar_create_sysfs_entry(efivars,
        variable_name_size,
        variable_name, &vendor);
  }
 }
}
