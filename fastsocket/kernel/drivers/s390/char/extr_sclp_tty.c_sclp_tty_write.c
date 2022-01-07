
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 unsigned char const* sclp_tty_chars ;
 scalar_t__ sclp_tty_chars_count ;
 int sclp_tty_write_string (unsigned char const*,int,int) ;

__attribute__((used)) static int
sclp_tty_write(struct tty_struct *tty, const unsigned char *buf, int count)
{
 if (sclp_tty_chars_count > 0) {
  sclp_tty_write_string(sclp_tty_chars, sclp_tty_chars_count, 0);
  sclp_tty_chars_count = 0;
 }
 return sclp_tty_write_string(buf, count, 1);
}
