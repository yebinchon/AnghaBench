
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int chg_vc_kbd_lock (int ,unsigned char) ;
 int kbd ;
 scalar_t__ rep ;

__attribute__((used)) static void k_lock(struct vc_data *vc, unsigned char value, char up_flag)
{
 if (up_flag || rep)
  return;
 chg_vc_kbd_lock(kbd, value);
}
