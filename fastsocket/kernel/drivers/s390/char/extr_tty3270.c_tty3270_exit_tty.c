
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty3270 {int view; } ;
struct kbd_data {TYPE_1__* tty; } ;
struct TYPE_2__ {struct tty3270* driver_data; } ;


 int raw3270_deactivate_view (int *) ;

__attribute__((used)) static void
tty3270_exit_tty(struct kbd_data *kbd)
{
 struct tty3270 *tp;

 tp = kbd->tty->driver_data;
 raw3270_deactivate_view(&tp->view);
}
