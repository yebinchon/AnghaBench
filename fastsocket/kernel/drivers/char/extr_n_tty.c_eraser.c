
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int read_head; int canon_head; int read_cnt; unsigned char* read_buf; int erasing; int read_lock; } ;


 unsigned char ERASE_CHAR (struct tty_struct*) ;
 unsigned char KILL_CHAR (struct tty_struct*) ;
 scalar_t__ L_ECHO (struct tty_struct*) ;
 scalar_t__ L_ECHOCTL (struct tty_struct*) ;
 int L_ECHOE (struct tty_struct*) ;
 scalar_t__ L_ECHOK (struct tty_struct*) ;
 int L_ECHOKE (struct tty_struct*) ;
 scalar_t__ L_ECHOPRT (struct tty_struct*) ;
 int N_TTY_BUF_SIZE ;
 unsigned char WERASE_CHAR (struct tty_struct*) ;
 int echo_char (unsigned char,struct tty_struct*) ;
 int echo_char_raw (char,struct tty_struct*) ;
 int echo_erase_tab (unsigned int,int,struct tty_struct*) ;
 int echo_move_back_col (struct tty_struct*) ;
 int finish_erasing (struct tty_struct*) ;
 scalar_t__ is_continuation (unsigned char,struct tty_struct*) ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ iscntrl (unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void eraser(unsigned char c, struct tty_struct *tty)
{
 enum { ERASE, WERASE, KILL } kill_type;
 int head, seen_alnums, cnt;
 unsigned long flags;


 if (tty->read_head == tty->canon_head) {

  return;
 }
 if (c == ERASE_CHAR(tty))
  kill_type = ERASE;
 else if (c == WERASE_CHAR(tty))
  kill_type = WERASE;
 else {
  if (!L_ECHO(tty)) {
   spin_lock_irqsave(&tty->read_lock, flags);
   tty->read_cnt -= ((tty->read_head - tty->canon_head) &
       (N_TTY_BUF_SIZE - 1));
   tty->read_head = tty->canon_head;
   spin_unlock_irqrestore(&tty->read_lock, flags);
   return;
  }
  if (!L_ECHOK(tty) || !L_ECHOKE(tty) || !L_ECHOE(tty)) {
   spin_lock_irqsave(&tty->read_lock, flags);
   tty->read_cnt -= ((tty->read_head - tty->canon_head) &
       (N_TTY_BUF_SIZE - 1));
   tty->read_head = tty->canon_head;
   spin_unlock_irqrestore(&tty->read_lock, flags);
   finish_erasing(tty);
   echo_char(KILL_CHAR(tty), tty);

   if (L_ECHOK(tty))
    echo_char_raw('\n', tty);
   return;
  }
  kill_type = KILL;
 }

 seen_alnums = 0;

 while (tty->read_head != tty->canon_head) {
  head = tty->read_head;


  do {
   head = (head - 1) & (N_TTY_BUF_SIZE-1);
   c = tty->read_buf[head];
  } while (is_continuation(c, tty) && head != tty->canon_head);


  if (is_continuation(c, tty))
   break;

  if (kill_type == WERASE) {

   if (isalnum(c) || c == '_')
    seen_alnums++;
   else if (seen_alnums)
    break;
  }
  cnt = (tty->read_head - head) & (N_TTY_BUF_SIZE-1);
  spin_lock_irqsave(&tty->read_lock, flags);
  tty->read_head = head;
  tty->read_cnt -= cnt;
  spin_unlock_irqrestore(&tty->read_lock, flags);
  if (L_ECHO(tty)) {
   if (L_ECHOPRT(tty)) {
    if (!tty->erasing) {
     echo_char_raw('\\', tty);
     tty->erasing = 1;
    }

    echo_char(c, tty);
    while (--cnt > 0) {
     head = (head+1) & (N_TTY_BUF_SIZE-1);
     echo_char_raw(tty->read_buf[head], tty);
     echo_move_back_col(tty);
    }
   } else if (kill_type == ERASE && !L_ECHOE(tty)) {
    echo_char(ERASE_CHAR(tty), tty);
   } else if (c == '\t') {
    unsigned int num_chars = 0;
    int after_tab = 0;
    unsigned long tail = tty->read_head;
    while (tail != tty->canon_head) {
     tail = (tail-1) & (N_TTY_BUF_SIZE-1);
     c = tty->read_buf[tail];
     if (c == '\t') {
      after_tab = 1;
      break;
     } else if (iscntrl(c)) {
      if (L_ECHOCTL(tty))
       num_chars += 2;
     } else if (!is_continuation(c, tty)) {
      num_chars++;
     }
    }
    echo_erase_tab(num_chars, after_tab, tty);
   } else {
    if (iscntrl(c) && L_ECHOCTL(tty)) {
     echo_char_raw('\b', tty);
     echo_char_raw(' ', tty);
     echo_char_raw('\b', tty);
    }
    if (!iscntrl(c) || L_ECHOCTL(tty)) {
     echo_char_raw('\b', tty);
     echo_char_raw(' ', tty);
     echo_char_raw('\b', tty);
    }
   }
  }
  if (kill_type == ERASE)
   break;
 }
 if (tty->read_head == tty->canon_head && L_ECHO(tty))
  finish_erasing(tty);
}
