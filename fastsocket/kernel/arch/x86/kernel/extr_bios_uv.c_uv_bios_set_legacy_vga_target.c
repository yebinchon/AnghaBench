
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int UV_BIOS_SET_LEGACY_VGA_TARGET ;
 int uv_bios_call (int ,int ,int ,int ,int ,int ) ;

int uv_bios_set_legacy_vga_target(bool decode, int domain, int bus)
{
 return uv_bios_call(UV_BIOS_SET_LEGACY_VGA_TARGET,
    (u64)decode, (u64)domain, (u64)bus, 0, 0);
}
