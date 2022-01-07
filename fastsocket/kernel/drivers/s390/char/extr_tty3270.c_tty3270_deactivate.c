
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int timer; } ;
struct raw3270_view {int dummy; } ;


 int del_timer (int *) ;

__attribute__((used)) static void
tty3270_deactivate(struct raw3270_view *view)
{
 struct tty3270 *tp;

 tp = (struct tty3270 *) view;
 del_timer(&tp->timer);
}
