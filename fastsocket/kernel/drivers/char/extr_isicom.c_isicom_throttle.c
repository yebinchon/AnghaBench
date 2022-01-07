
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int channel; struct isi_board* card; } ;
struct isi_board {int port_status; scalar_t__ base; } ;


 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void isicom_throttle(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;

 if (isicom_paranoia_check(port, tty->name, "isicom_throttle"))
  return;


 card->port_status &= ~(1 << port->channel);
 outw(card->port_status, card->base + 0x02);
}
