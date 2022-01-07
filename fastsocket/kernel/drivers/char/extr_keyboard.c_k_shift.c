
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ kbdmode; } ;


 unsigned char KVAL (int ) ;
 int K_CAPSSHIFT ;
 int K_SHIFT ;
 int VC_CAPSLOCK ;
 scalar_t__ VC_UNICODE ;
 int clr_vc_kbd_led (TYPE_1__*,int ) ;
 TYPE_1__* kbd ;
 int npadch ;
 int put_queue (struct vc_data*,int) ;
 scalar_t__ rep ;
 scalar_t__* shift_down ;
 int shift_state ;
 int to_utf8 (struct vc_data*,int) ;

__attribute__((used)) static void k_shift(struct vc_data *vc, unsigned char value, char up_flag)
{
 int old_state = shift_state;

 if (rep)
  return;




 if (value == KVAL(K_CAPSSHIFT)) {
  value = KVAL(K_SHIFT);
  if (!up_flag)
   clr_vc_kbd_led(kbd, VC_CAPSLOCK);
 }

 if (up_flag) {




  if (shift_down[value])
   shift_down[value]--;
 } else
  shift_down[value]++;

 if (shift_down[value])
  shift_state |= (1 << value);
 else
  shift_state &= ~(1 << value);


 if (up_flag && shift_state != old_state && npadch != -1) {
  if (kbd->kbdmode == VC_UNICODE)
   to_utf8(vc, npadch);
  else
   put_queue(vc, npadch & 0xff);
  npadch = -1;
 }
}
