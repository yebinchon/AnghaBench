
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct hso_serial {int unthrottle_tasklet; } ;


 struct hso_serial* get_serial_by_tty (struct tty_struct*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static void hso_unthrottle(struct tty_struct *tty)
{
 struct hso_serial *serial = get_serial_by_tty(tty);

 tasklet_hi_schedule(&serial->unthrottle_tasklet);
}
