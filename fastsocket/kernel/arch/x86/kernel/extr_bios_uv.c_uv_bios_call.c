
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct uv_systab {int function; } ;
typedef int s64 ;
typedef enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;


 int BIOS_STATUS_UNIMPLEMENTED ;
 scalar_t__ __va (int ) ;
 int efi_call6 (void*,int ,int ,int ,int ,int ,int ) ;
 struct uv_systab uv_systab ;

s64 uv_bios_call(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3, u64 a4, u64 a5)
{
 struct uv_systab *tab = &uv_systab;
 s64 ret;

 if (!tab->function)



  return BIOS_STATUS_UNIMPLEMENTED;

 ret = efi_call6((void *)__va(tab->function), (u64)which,
   a1, a2, a3, a4, a5);
 return ret;
}
