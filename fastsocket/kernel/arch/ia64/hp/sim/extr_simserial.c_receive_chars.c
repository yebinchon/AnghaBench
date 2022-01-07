
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int SSC_GETCHAR ;
 int TTY_NORMAL ;
 int handle_sysrq (unsigned char,int *) ;
 unsigned char ia64_ssc (int ,int ,int ,int ,int ) ;
 int show_state () ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ tty_insert_flip_char (struct tty_struct*,unsigned char,int ) ;

__attribute__((used)) static void receive_chars(struct tty_struct *tty)
{
 unsigned char ch;
 static unsigned char seen_esc = 0;

 while ( (ch = ia64_ssc(0, 0, 0, 0, SSC_GETCHAR)) ) {
  if ( ch == 27 && seen_esc == 0 ) {
   seen_esc = 1;
   continue;
  } else {
   if ( seen_esc==1 && ch == 'O' ) {
    seen_esc = 2;
    continue;
   } else if ( seen_esc == 2 ) {
    if ( ch == 'P' )
     show_state();
    seen_esc = 0;
    continue;
   }
  }
  seen_esc = 0;

  if (tty_insert_flip_char(tty, ch, TTY_NORMAL) == 0)
   break;
 }
 tty_flip_buffer_push(tty);
}
