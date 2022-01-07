
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int column; int canon_column; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,char*,int) ;} ;


 int O_OCRNL (struct tty_struct*) ;
 int O_OLCUC (struct tty_struct*) ;
 int O_ONLCR (struct tty_struct*) ;
 int O_ONLRET (struct tty_struct*) ;
 int O_ONOCR (struct tty_struct*) ;
 int O_TABDLY (struct tty_struct*) ;
 int XTABS ;
 int is_continuation (unsigned char,struct tty_struct*) ;
 int iscntrl (unsigned char) ;
 int stub1 (struct tty_struct*,char*,int) ;
 int stub2 (struct tty_struct*,char*,int) ;
 unsigned char toupper (unsigned char) ;
 int tty_put_char (struct tty_struct*,unsigned char) ;

__attribute__((used)) static int do_output_char(unsigned char c, struct tty_struct *tty, int space)
{
 int spaces;

 if (!space)
  return -1;

 switch (c) {
 case '\n':
  if (O_ONLRET(tty))
   tty->column = 0;
  if (O_ONLCR(tty)) {
   if (space < 2)
    return -1;
   tty->canon_column = tty->column = 0;
   tty->ops->write(tty, "\r\n", 2);
   return 2;
  }
  tty->canon_column = tty->column;
  break;
 case '\r':
  if (O_ONOCR(tty) && tty->column == 0)
   return 0;
  if (O_OCRNL(tty)) {
   c = '\n';
   if (O_ONLRET(tty))
    tty->canon_column = tty->column = 0;
   break;
  }
  tty->canon_column = tty->column = 0;
  break;
 case '\t':
  spaces = 8 - (tty->column & 7);
  if (O_TABDLY(tty) == XTABS) {
   if (space < spaces)
    return -1;
   tty->column += spaces;
   tty->ops->write(tty, "        ", spaces);
   return spaces;
  }
  tty->column += spaces;
  break;
 case '\b':
  if (tty->column > 0)
   tty->column--;
  break;
 default:
  if (!iscntrl(c)) {
   if (O_OLCUC(tty))
    c = toupper(c);
   if (!is_continuation(c, tty))
    tty->column++;
  }
  break;
 }

 tty_put_char(tty, c);
 return 1;
}
