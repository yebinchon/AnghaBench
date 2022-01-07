
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dsm_detected; scalar_t__ optimus_detected; } ;


 TYPE_1__ nouveau_dsm_priv ;
 int vga_switcheroo_unregister_handler () ;

void nouveau_unregister_dsm_handler(void)
{
 if (nouveau_dsm_priv.optimus_detected || nouveau_dsm_priv.dsm_detected)
  vga_switcheroo_unregister_handler();
}
