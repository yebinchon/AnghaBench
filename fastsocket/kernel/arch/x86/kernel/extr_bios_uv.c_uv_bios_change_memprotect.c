
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef enum uv_memprotect { ____Placeholder_uv_memprotect } uv_memprotect ;


 int UV_BIOS_MEMPROTECT ;
 int uv_bios_call_irqsave (int ,int ,int ,int,int ,int ) ;

s64
uv_bios_change_memprotect(u64 paddr, u64 len, enum uv_memprotect perms)
{
 return uv_bios_call_irqsave(UV_BIOS_MEMPROTECT, paddr, len,
     perms, 0, 0);
}
