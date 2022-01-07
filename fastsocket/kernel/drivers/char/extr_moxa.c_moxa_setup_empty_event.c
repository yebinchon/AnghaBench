
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int EMPTYWAIT ;
 int moxa_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void moxa_setup_empty_event(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;

 spin_lock_bh(&moxa_lock);
 ch->statusflags |= EMPTYWAIT;
 spin_unlock_bh(&moxa_lock);
}
