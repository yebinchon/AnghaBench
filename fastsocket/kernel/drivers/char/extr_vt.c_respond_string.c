
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int con_schedule_flip (struct tty_struct*) ;
 int tty_insert_flip_char (struct tty_struct*,char const,int ) ;

__attribute__((used)) static void respond_string(const char *p, struct tty_struct *tty)
{
 while (*p) {
  tty_insert_flip_char(tty, *p, 0);
  p++;
 }
 con_schedule_flip(tty);
}
