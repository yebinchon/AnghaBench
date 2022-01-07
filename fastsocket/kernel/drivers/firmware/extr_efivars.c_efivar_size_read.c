
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int DataSize; } ;
struct efivar_entry {int efivars; struct efi_variable var; } ;
typedef int ssize_t ;
typedef scalar_t__ efi_status_t ;


 scalar_t__ EFI_SUCCESS ;
 int EINVAL ;
 int EIO ;
 scalar_t__ get_var_data (int ,struct efi_variable*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t
efivar_size_read(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;
 char *str = buf;
 efi_status_t status;

 if (!entry || !buf)
  return -EINVAL;

 status = get_var_data(entry->efivars, var);
 if (status != EFI_SUCCESS)
  return -EIO;

 str += sprintf(str, "0x%lx\n", var->DataSize);
 return str - buf;
}
