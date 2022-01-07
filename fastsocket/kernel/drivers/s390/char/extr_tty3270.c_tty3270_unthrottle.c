
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct tty3270* driver_data; } ;
struct tty3270 {scalar_t__ attn; scalar_t__ throttle; } ;


 int tty3270_issue_read (struct tty3270*,int) ;

__attribute__((used)) static void
tty3270_unthrottle(struct tty_struct * tty)
{
 struct tty3270 *tp;

 tp = tty->driver_data;
 if (!tp)
  return;
 tp->throttle = 0;
 if (tp->attn)
  tty3270_issue_read(tp, 1);
}
