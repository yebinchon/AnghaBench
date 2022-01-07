
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pnp_bios_install ;

int pnp_bios_present(void)
{
 return (pnp_bios_install != ((void*)0));
}
