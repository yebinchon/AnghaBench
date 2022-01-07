
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_arbiter_notify_clients () ;
 int vga_arbiter_used ;

__attribute__((used)) static void vga_check_first_use(void)
{



 if (!vga_arbiter_used) {
  vga_arbiter_used = 1;
  vga_arbiter_notify_clients();
 }
}
