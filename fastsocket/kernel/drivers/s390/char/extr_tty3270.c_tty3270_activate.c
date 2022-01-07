
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int update_flags; } ;
struct raw3270_view {int dummy; } ;


 int TTY_UPDATE_ALL ;
 int tty3270_set_timer (struct tty3270*,int) ;

__attribute__((used)) static int
tty3270_activate(struct raw3270_view *view)
{
 struct tty3270 *tp;

 tp = (struct tty3270 *) view;
 tp->update_flags = TTY_UPDATE_ALL;
 tty3270_set_timer(tp, 1);
 return 0;
}
