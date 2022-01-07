
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int radeon_atpx_detect () ;
 int radeon_atpx_handler ;
 int vga_switcheroo_register_handler (int *) ;

void radeon_register_atpx_handler(void)
{
 bool r;


 r = radeon_atpx_detect();
 if (!r)
  return;

 vga_switcheroo_register_handler(&radeon_atpx_handler);
}
