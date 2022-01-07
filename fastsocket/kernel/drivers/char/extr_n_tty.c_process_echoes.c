
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int echo_cnt; unsigned char* echo_buf; int echo_pos; unsigned int canon_column; unsigned int column; TYPE_1__* ops; int output_lock; int echo_lock; scalar_t__ echo_overrun; int flags; } ;
struct TYPE_2__ {int (* flush_chars ) (struct tty_struct*) ;} ;






 int N_TTY_BUF_SIZE ;
 scalar_t__ O_OPOST (struct tty_struct*) ;
 int TTY_HW_COOK_OUT ;
 int do_output_char (unsigned char,struct tty_struct*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*) ;
 int test_bit (int ,int *) ;
 int tty_put_char (struct tty_struct*,unsigned char const) ;
 int tty_write_room (struct tty_struct*) ;

__attribute__((used)) static void process_echoes(struct tty_struct *tty)
{
 int space, nr;
 unsigned char c;
 unsigned char *cp, *buf_end;

 if (!tty->echo_cnt)
  return;

 mutex_lock(&tty->output_lock);
 mutex_lock(&tty->echo_lock);

 space = tty_write_room(tty);

 buf_end = tty->echo_buf + N_TTY_BUF_SIZE;
 cp = tty->echo_buf + tty->echo_pos;
 nr = tty->echo_cnt;
 while (nr > 0) {
  c = *cp;
  if (c == 128) {
   unsigned char op;
   unsigned char *opp;
   int no_space_left = 0;






   opp = cp + 1;
   if (opp == buf_end)
    opp -= N_TTY_BUF_SIZE;
   op = *opp;

   switch (op) {
    unsigned int num_chars, num_bs;

   case 131:
    if (++opp == buf_end)
     opp -= N_TTY_BUF_SIZE;
    num_chars = *opp;
    if (!(num_chars & 0x80))
     num_chars += tty->canon_column;
    num_bs = 8 - (num_chars & 7);

    if (num_bs > space) {
     no_space_left = 1;
     break;
    }
    space -= num_bs;
    while (num_bs--) {
     tty_put_char(tty, '\b');
     if (tty->column > 0)
      tty->column--;
    }
    cp += 3;
    nr -= 3;
    break;

   case 129:
    tty->canon_column = tty->column;
    cp += 2;
    nr -= 2;
    break;

   case 130:
    if (tty->column > 0)
     tty->column--;
    cp += 2;
    nr -= 2;
    break;

   case 128:

    if (!space) {
     no_space_left = 1;
     break;
    }
    tty_put_char(tty, 128);
    tty->column++;
    space--;
    cp += 2;
    nr -= 2;
    break;

   default:
    if (space < 2) {
     no_space_left = 1;
     break;
    }
    tty_put_char(tty, '^');
    tty_put_char(tty, op ^ 0100);
    tty->column += 2;
    space -= 2;
    cp += 2;
    nr -= 2;
   }

   if (no_space_left)
    break;
  } else {
   if (O_OPOST(tty) &&
       !(test_bit(TTY_HW_COOK_OUT, &tty->flags))) {
    int retval = do_output_char(c, tty, space);
    if (retval < 0)
     break;
    space -= retval;
   } else {
    if (!space)
     break;
    tty_put_char(tty, c);
    space -= 1;
   }
   cp += 1;
   nr -= 1;
  }


  if (cp >= buf_end)
   cp -= N_TTY_BUF_SIZE;
 }

 if (nr == 0) {
  tty->echo_pos = 0;
  tty->echo_cnt = 0;
  tty->echo_overrun = 0;
 } else {
  int num_processed = tty->echo_cnt - nr;
  tty->echo_pos += num_processed;
  tty->echo_pos &= N_TTY_BUF_SIZE - 1;
  tty->echo_cnt = nr;
  if (num_processed > 0)
   tty->echo_overrun = 0;
 }

 mutex_unlock(&tty->echo_lock);
 mutex_unlock(&tty->output_lock);

 if (tty->ops->flush_chars)
  tty->ops->flush_chars(tty);
}
