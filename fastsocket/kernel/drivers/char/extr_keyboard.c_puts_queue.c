
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {int dummy; } ;


 int con_schedule_flip (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char,int ) ;

__attribute__((used)) static void puts_queue(struct vc_data *vc, char *cp)
{
 struct tty_struct *tty = vc->vc_tty;

 if (!tty)
  return;

 while (*cp) {
  tty_insert_flip_char(tty, *cp, 0);
  cp++;
 }
 con_schedule_flip(tty);
}
