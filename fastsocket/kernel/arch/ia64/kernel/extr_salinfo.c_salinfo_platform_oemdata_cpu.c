
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct salinfo_platform_oemdata_parms {int oemdata_size; int oemdata; int efi_guid; int ret; } ;


 int salinfo_platform_oemdata (int ,int ,int ) ;

__attribute__((used)) static void
salinfo_platform_oemdata_cpu(void *context)
{
 struct salinfo_platform_oemdata_parms *parms = context;
 parms->ret = salinfo_platform_oemdata(parms->efi_guid, parms->oemdata, parms->oemdata_size);
}
