
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int dummy; } ;
struct efivar_entry {int efivars; struct efi_variable var; } ;
typedef int ssize_t ;
typedef scalar_t__ efi_status_t ;


 scalar_t__ EFI_SUCCESS ;
 int EIO ;
 scalar_t__ get_var_data (int ,struct efi_variable*) ;
 int memcpy (char*,struct efi_variable*,int) ;

__attribute__((used)) static ssize_t
efivar_show_raw(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;
 efi_status_t status;

 if (!entry || !buf)
  return 0;

 status = get_var_data(entry->efivars, var);
 if (status != EFI_SUCCESS)
  return -EIO;

 memcpy(buf, var, sizeof(*var));
 return sizeof(*var);
}
