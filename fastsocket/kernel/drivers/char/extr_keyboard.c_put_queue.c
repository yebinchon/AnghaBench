
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {struct tty_struct* vc_tty; } ;
struct tty_struct {int dummy; } ;


 int con_schedule_flip (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,int,int ) ;

__attribute__((used)) static void put_queue(struct vc_data *vc, int ch)
{
 struct tty_struct *tty = vc->vc_tty;

 if (tty) {
  tty_insert_flip_char(tty, ch, 0);
  con_schedule_flip(tty);
 }
}
