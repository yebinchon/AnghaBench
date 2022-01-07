
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct con3270 {int timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static void
con3270_deactivate(struct raw3270_view *view)
{
 struct con3270 *cp;

 cp = (struct con3270 *) view;
 del_timer(&cp->timer);
}
