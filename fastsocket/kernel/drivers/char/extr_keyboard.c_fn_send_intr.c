
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {int dummy; } ;


 int TTY_BREAK ;
 int con_schedule_flip (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,int ,int ) ;

__attribute__((used)) static void fn_send_intr(struct vc_data *vc)
{
 struct tty_struct *tty = vc->vc_tty;

 if (!tty)
  return;
 tty_insert_flip_char(tty, 0, TTY_BREAK);
 con_schedule_flip(tty);
}
