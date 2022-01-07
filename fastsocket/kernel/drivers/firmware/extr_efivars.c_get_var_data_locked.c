
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efivars {TYPE_1__* ops; } ;
struct efi_variable {int DataSize; int Data; int Attributes; int VendorGuid; int VariableName; } ;
typedef int efi_status_t ;
struct TYPE_2__ {int (* get_variable ) (int ,int *,int *,int*,int ) ;} ;


 int stub1 (int ,int *,int *,int*,int ) ;

__attribute__((used)) static efi_status_t
get_var_data_locked(struct efivars *efivars, struct efi_variable *var)
{
 efi_status_t status;

 var->DataSize = 1024;
 status = efivars->ops->get_variable(var->VariableName,
         &var->VendorGuid,
         &var->Attributes,
         &var->DataSize,
         var->Data);
 return status;
}
