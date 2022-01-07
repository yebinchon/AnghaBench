
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct TYPE_4__ {int flags; } ;
struct isi_port {TYPE_1__ port; struct isi_board* card; } ;
struct isi_board {scalar_t__ count; int base; } ;


 int ASYNC_INITIALIZED ;
 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int TTY_IO_ERROR ;
 int drop_dtr (struct isi_port*) ;
 int isicom_shutdown_board (struct isi_board*) ;
 int pr_dbg (char*,int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 int tty_kref_put (struct tty_struct*) ;
 int tty_port_free_xmit_buf (TYPE_1__*) ;
 struct tty_struct* tty_port_tty_get (TYPE_1__*) ;
 int tty_port_tty_set (TYPE_1__*,int *) ;

__attribute__((used)) static void isicom_shutdown_port(struct isi_port *port)
{
 struct isi_board *card = port->card;
 struct tty_struct *tty;

 tty = tty_port_tty_get(&port->port);

 if (!(port->port.flags & ASYNC_INITIALIZED)) {
  tty_kref_put(tty);
  return;
 }

 tty_port_free_xmit_buf(&port->port);
 port->port.flags &= ~ASYNC_INITIALIZED;

 tty_port_tty_set(&port->port, ((void*)0));







 if (C_HUPCL(tty))

  drop_dtr(port);


 if (tty)
  set_bit(TTY_IO_ERROR, &tty->flags);

 if (--card->count < 0) {
  pr_dbg("isicom_shutdown_port: bad board(0x%lx) count %d.\n",
   card->base, card->count);
  card->count = 0;
 }


 if (C_HUPCL(tty)) {
  if (!card->count)
   isicom_shutdown_board(card);
 }
 tty_kref_put(tty);
}
