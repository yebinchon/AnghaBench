
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
typedef int acpi_handle ;


 int NOUVEAU_DSM_POWER ;
 int NOUVEAU_DSM_POWER_SPEED ;
 int NOUVEAU_DSM_POWER_STAMINA ;
 int VGA_SWITCHEROO_ON ;
 int nouveau_dsm (int ,int ,int,int *) ;

__attribute__((used)) static int nouveau_dsm_set_discrete_state(acpi_handle handle, enum vga_switcheroo_state state)
{
 int arg;
 if (state == VGA_SWITCHEROO_ON)
  arg = NOUVEAU_DSM_POWER_SPEED;
 else
  arg = NOUVEAU_DSM_POWER_STAMINA;
 nouveau_dsm(handle, NOUVEAU_DSM_POWER, arg, ((void*)0));
 return 0;
}
