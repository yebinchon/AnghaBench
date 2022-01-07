
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nouveau_dsm_detect () ;
 int nouveau_dsm_handler ;
 int vga_switcheroo_register_handler (int *) ;

void nouveau_register_dsm_handler(void)
{
 bool r;

 r = nouveau_dsm_detect();
 if (!r)
  return;

 vga_switcheroo_register_handler(&nouveau_dsm_handler);
}
