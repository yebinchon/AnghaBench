
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int sclp_tty_chars ;
 scalar_t__ sclp_tty_chars_count ;
 int sclp_tty_write_string (int ,scalar_t__,int ) ;

__attribute__((used)) static void
sclp_tty_flush_buffer(struct tty_struct *tty)
{
 if (sclp_tty_chars_count > 0) {
  sclp_tty_write_string(sclp_tty_chars, sclp_tty_chars_count, 0);
  sclp_tty_chars_count = 0;
 }
}
