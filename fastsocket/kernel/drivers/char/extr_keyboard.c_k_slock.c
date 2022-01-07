
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {size_t lockstate; size_t slockstate; } ;


 int chg_vc_kbd_slock (TYPE_1__*,unsigned char) ;
 int k_shift (struct vc_data*,unsigned char,char) ;
 TYPE_1__* kbd ;
 int * key_maps ;
 scalar_t__ rep ;

__attribute__((used)) static void k_slock(struct vc_data *vc, unsigned char value, char up_flag)
{
 k_shift(vc, value, up_flag);
 if (up_flag || rep)
  return;
 chg_vc_kbd_slock(kbd, value);

 if (!key_maps[kbd->lockstate ^ kbd->slockstate]) {
  kbd->slockstate = 0;
  chg_vc_kbd_slock(kbd, value);
 }
}
