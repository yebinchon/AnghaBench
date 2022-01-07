
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum vga_switcheroo_client_id { ____Placeholder_vga_switcheroo_client_id } vga_switcheroo_client_id ;
struct TYPE_2__ {int dhandle; int dsm_detected; } ;


 int NOUVEAU_DSM_LED_SPEED ;
 int NOUVEAU_DSM_LED_STAMINA ;
 int VGA_SWITCHEROO_IGD ;
 TYPE_1__ nouveau_dsm_priv ;
 int nouveau_dsm_switch_mux (int ,int ) ;

__attribute__((used)) static int nouveau_dsm_switchto(enum vga_switcheroo_client_id id)
{
 if (!nouveau_dsm_priv.dsm_detected)
  return 0;
 if (id == VGA_SWITCHEROO_IGD)
  return nouveau_dsm_switch_mux(nouveau_dsm_priv.dhandle, NOUVEAU_DSM_LED_STAMINA);
 else
  return nouveau_dsm_switch_mux(nouveau_dsm_priv.dhandle, NOUVEAU_DSM_LED_SPEED);
}
