
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {scalar_t__ pwr_state; int pdev; } ;
struct TYPE_2__ {int clients; } ;


 scalar_t__ VGA_SWITCHEROO_OFF ;
 struct vga_switcheroo_client* find_active_client (int *) ;
 int vga_set_default_device (int ) ;
 int vga_switchon (struct vga_switcheroo_client*) ;
 TYPE_1__ vgasr_priv ;

__attribute__((used)) static int vga_switchto_stage1(struct vga_switcheroo_client *new_client)
{
 struct vga_switcheroo_client *active;

 active = find_active_client(&vgasr_priv.clients);
 if (!active)
  return 0;

 if (new_client->pwr_state == VGA_SWITCHEROO_OFF)
  vga_switchon(new_client);

 vga_set_default_device(new_client->pdev);
 return 0;
}
