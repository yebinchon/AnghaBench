
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; scalar_t__ stopped; } ;
struct moxa_port {int dummy; } ;


 int MoxaPortTxFree (struct moxa_port*) ;

__attribute__((used)) static int moxa_write_room(struct tty_struct *tty)
{
 struct moxa_port *ch;

 if (tty->stopped)
  return 0;
 ch = tty->driver_data;
 if (ch == ((void*)0))
  return 0;
 return MoxaPortTxFree(ch);
}
