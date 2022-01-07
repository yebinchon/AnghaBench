
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; int name; } ;
struct tty_port {int dummy; } ;
struct isi_port {struct tty_port port; } ;
struct isi_board {int status; unsigned int port_count; } ;


 unsigned int BOARD (int) ;
 int FIRMWARE_LOADED ;
 int PORT_COUNT ;
 struct isi_board* isi_card ;
 struct isi_port* isi_ports ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static struct tty_port *isicom_find_port(struct tty_struct *tty)
{
 struct isi_port *port;
 struct isi_board *card;
 unsigned int board;
 int line = tty->index;

 if (line < 0 || line > PORT_COUNT-1)
  return ((void*)0);
 board = BOARD(line);
 card = &isi_card[board];

 if (!(card->status & FIRMWARE_LOADED))
  return ((void*)0);


 if (line > ((board * 16) + card->port_count - 1))
  return ((void*)0);

 port = &isi_ports[line];
 if (isicom_paranoia_check(port, tty->name, "isicom_open"))
  return ((void*)0);

 return &port->port;
}
