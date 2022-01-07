
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct cyclades_port* driver_data; } ;
struct cyclades_port {char x_char; int line; struct cyclades_card* card; } ;
struct cyclades_card {int first_line; } ;


 int C_CM_SENDXOFF ;
 int C_CM_SENDXON ;
 char START_CHAR (struct tty_struct*) ;
 char STOP_CHAR (struct tty_struct*) ;
 scalar_t__ cy_is_Z (struct cyclades_card*) ;
 int cy_start (struct tty_struct*) ;
 int cyz_issue_cmd (struct cyclades_card*,int,int ,long) ;
 scalar_t__ serial_paranoia_check (struct cyclades_port*,int ,char*) ;

__attribute__((used)) static void cy_send_xchar(struct tty_struct *tty, char ch)
{
 struct cyclades_port *info = tty->driver_data;
 struct cyclades_card *card;
 int channel;

 if (serial_paranoia_check(info, tty->name, "cy_send_xchar"))
  return;

 info->x_char = ch;

 if (ch)
  cy_start(tty);

 card = info->card;
 channel = info->line - card->first_line;

 if (cy_is_Z(card)) {
  if (ch == STOP_CHAR(tty))
   cyz_issue_cmd(card, channel, C_CM_SENDXOFF, 0L);
  else if (ch == START_CHAR(tty))
   cyz_issue_cmd(card, channel, C_CM_SENDXON, 0L);
 }
}
