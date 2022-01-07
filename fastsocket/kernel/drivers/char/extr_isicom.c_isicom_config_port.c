
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct tty_struct {TYPE_1__* termios; struct isi_port* driver_data; } ;
struct TYPE_4__ {int flags; } ;
struct isi_port {int channel; TYPE_2__ port; struct isi_board* card; } ;
struct isi_board {unsigned long base; int shift_count; int port_status; } ;
struct TYPE_3__ {unsigned long c_cflag; } ;


 int ASYNC_CHECK_CD ;
 int ASYNC_CTS_FLOW ;
 int ASYNC_SPD_HI ;
 int ASYNC_SPD_MASK ;
 int ASYNC_SPD_SHI ;
 int ASYNC_SPD_VHI ;
 int ASYNC_SPD_WARP ;
 unsigned long CBAUDEX ;




 unsigned long C_BAUD (struct tty_struct*) ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 scalar_t__ C_CREAD (struct tty_struct*) ;
 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int C_CSIZE (struct tty_struct*) ;
 scalar_t__ C_CSTOPB (struct tty_struct*) ;
 scalar_t__ C_PARENB (struct tty_struct*) ;
 scalar_t__ C_PARODD (struct tty_struct*) ;
 int ISICOM_2SB ;
 int ISICOM_CS5 ;
 int ISICOM_CS6 ;
 int ISICOM_CS7 ;
 int ISICOM_CS8 ;
 unsigned char ISICOM_CTSRTS ;
 int ISICOM_EVPAR ;
 unsigned char ISICOM_INITIATE_XONXOFF ;
 int ISICOM_ODPAR ;
 unsigned char ISICOM_RESPOND_XONXOFF ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 scalar_t__ I_IXON (struct tty_struct*) ;
 int InterruptTheCard (unsigned long) ;
 int START_CHAR (struct tty_struct*) ;
 int STOP_CHAR (struct tty_struct*) ;
 scalar_t__ WaitTillCardIsFree (unsigned long) ;
 int drop_dtr (struct isi_port*) ;
 int* linuxb_to_isib ;
 int outw (int,unsigned long) ;
 int raise_dtr (struct isi_port*) ;

__attribute__((used)) static void isicom_config_port(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 struct isi_board *card = port->card;
 unsigned long baud;
 unsigned long base = card->base;
 u16 channel_setup, channel = port->channel,
  shift_count = card->shift_count;
 unsigned char flow_ctrl;


 baud = C_BAUD(tty);
 if (baud & CBAUDEX) {
  baud &= ~CBAUDEX;







  if (baud < 1 || baud > 4)
   tty->termios->c_cflag &= ~CBAUDEX;
  else
   baud += 15;
 }
 if (baud == 15) {






  if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_HI)
   baud++;
  if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI)
   baud += 2;
  if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_SHI)
   baud += 3;
  if ((port->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_WARP)
   baud += 4;
 }
 if (linuxb_to_isib[baud] == -1) {

  drop_dtr(port);
  return;
 } else
  raise_dtr(port);

 if (WaitTillCardIsFree(base) == 0) {
  outw(0x8000 | (channel << shift_count) | 0x03, base);
  outw(linuxb_to_isib[baud] << 8 | 0x03, base);
  channel_setup = 0;
  switch (C_CSIZE(tty)) {
  case 131:
   channel_setup |= ISICOM_CS5;
   break;
  case 130:
   channel_setup |= ISICOM_CS6;
   break;
  case 129:
   channel_setup |= ISICOM_CS7;
   break;
  case 128:
   channel_setup |= ISICOM_CS8;
   break;
  }

  if (C_CSTOPB(tty))
   channel_setup |= ISICOM_2SB;
  if (C_PARENB(tty)) {
   channel_setup |= ISICOM_EVPAR;
   if (C_PARODD(tty))
    channel_setup |= ISICOM_ODPAR;
  }
  outw(channel_setup, base);
  InterruptTheCard(base);
 }
 if (C_CLOCAL(tty))
  port->port.flags &= ~ASYNC_CHECK_CD;
 else
  port->port.flags |= ASYNC_CHECK_CD;


 flow_ctrl = 0;
 port->port.flags &= ~ASYNC_CTS_FLOW;
 if (C_CRTSCTS(tty)) {
  port->port.flags |= ASYNC_CTS_FLOW;
  flow_ctrl |= ISICOM_CTSRTS;
 }
 if (I_IXON(tty))
  flow_ctrl |= ISICOM_RESPOND_XONXOFF;
 if (I_IXOFF(tty))
  flow_ctrl |= ISICOM_INITIATE_XONXOFF;

 if (WaitTillCardIsFree(base) == 0) {
  outw(0x8000 | (channel << shift_count) | 0x04, base);
  outw(flow_ctrl << 8 | 0x05, base);
  outw((STOP_CHAR(tty)) << 8 | (START_CHAR(tty)), base);
  InterruptTheCard(base);
 }


 if (C_CREAD(tty)) {
  card->port_status |= (1 << channel);
  outw(card->port_status, base + 0x02);
 }
}
