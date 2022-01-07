
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct ktermios* termios; struct ktermios* termios_locked; TYPE_1__* driver; } ;
struct ktermios {int c_ospeed; int c_ispeed; } ;
struct TYPE_2__ {struct ktermios** termios; int init_termios; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ktermios* kzalloc (int,int ) ;
 int memcpy (struct ktermios*,int *,int) ;
 int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_input_baud_rate (struct ktermios*) ;

int tty_init_termios(struct tty_struct *tty)
{
 struct ktermios *tp;
 int idx = tty->index;

 tp = tty->driver->termios[idx];
 if (tp == ((void*)0)) {
  tp = kzalloc(sizeof(struct ktermios[2]), GFP_KERNEL);
  if (tp == ((void*)0))
   return -ENOMEM;
  memcpy(tp, &tty->driver->init_termios,
      sizeof(struct ktermios));
  tty->driver->termios[idx] = tp;
 }
 tty->termios = tp;
 tty->termios_locked = tp + 1;


 tty->termios->c_ispeed = tty_termios_input_baud_rate(tty->termios);
 tty->termios->c_ospeed = tty_termios_baud_rate(tty->termios);
 return 0;
}
