
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;
struct cardstate {int write_tasklet; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct cardstate* cs_get (struct tty_struct*) ;
 int cs_put (struct cardstate*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void
gigaset_tty_wakeup(struct tty_struct *tty)
{
 struct cardstate *cs = cs_get(tty);

 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);
 if (!cs)
  return;
 tasklet_schedule(&cs->write_tasklet);
 cs_put(cs);
}
