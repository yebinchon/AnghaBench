
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int * vc_tty; } ;
struct tty_struct {struct vc_data* driver_data; } ;


 int BUG_ON (int ) ;
 int acquire_console_sem () ;
 int release_console_sem () ;
 int tty_shutdown (struct tty_struct*) ;

__attribute__((used)) static void con_shutdown(struct tty_struct *tty)
{
 struct vc_data *vc = tty->driver_data;
 BUG_ON(vc == ((void*)0));
 acquire_console_sem();
 vc->vc_tty = ((void*)0);
 release_console_sem();
 tty_shutdown(tty);
}
