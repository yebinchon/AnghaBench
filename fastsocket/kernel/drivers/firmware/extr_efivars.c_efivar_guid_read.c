
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_variable {int VendorGuid; } ;
struct efivar_entry {struct efi_variable var; } ;
typedef int ssize_t ;


 int efi_guid_unparse (int *,char*) ;
 int sprintf (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static ssize_t
efivar_guid_read(struct efivar_entry *entry, char *buf)
{
 struct efi_variable *var = &entry->var;
 char *str = buf;

 if (!entry || !buf)
  return 0;

 efi_guid_unparse(&var->VendorGuid, str);
 str += strlen(str);
 str += sprintf(str, "\n");

 return str - buf;
}
