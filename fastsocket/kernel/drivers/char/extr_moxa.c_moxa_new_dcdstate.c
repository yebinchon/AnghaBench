
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tty_struct {int dummy; } ;
struct moxa_port {int DCDState; int port; } ;


 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void moxa_new_dcdstate(struct moxa_port *p, u8 dcd)
{
 struct tty_struct *tty;
 dcd = !!dcd;

 if (dcd != p->DCDState) {
  tty = tty_port_tty_get(&p->port);
  if (tty && C_CLOCAL(tty) && !dcd)
   tty_hangup(tty);
  tty_kref_put(tty);
 }
 p->DCDState = dcd;
}
