
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int VC_NUMLOCK ;
 int chg_vc_kbd_led (int ,int ) ;
 int kbd ;
 int rep ;

__attribute__((used)) static void fn_bare_num(struct vc_data *vc)
{
 if (!rep)
  chg_vc_kbd_led(kbd, VC_NUMLOCK);
}
