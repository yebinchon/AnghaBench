
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_char ;


 int ISDN_TIMER_MODEMPLUS ;
 scalar_t__ PLUSWAIT1 ;
 scalar_t__ PLUSWAIT2 ;
 int isdn_timer_ctrl (int ,int) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
isdn_tty_check_esc(const u_char * p, u_char plus, int count, int *pluscount,
     u_long *lastplus)
{
 if (plus > 127)
  return;
 if (count > 3) {
  p += count - 3;
  count = 3;
  *pluscount = 0;
 }
 while (count > 0) {
  if (*(p++) == plus) {
   if ((*pluscount)++) {

    if (time_after(jiffies, *lastplus + PLUSWAIT1))
     *pluscount = 1;
   } else {

    if (time_before(jiffies, *lastplus + PLUSWAIT2))
     *pluscount = 0;
   }
   if ((*pluscount == 3) && (count == 1))
    isdn_timer_ctrl(ISDN_TIMER_MODEMPLUS, 1);
   if (*pluscount > 3)
    *pluscount = 1;
  } else
   *pluscount = 0;
  *lastplus = jiffies;
  count--;
 }
}
