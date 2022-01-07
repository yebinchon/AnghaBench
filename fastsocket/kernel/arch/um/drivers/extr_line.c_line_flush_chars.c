
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int line_flush_buffer (struct tty_struct*) ;

void line_flush_chars(struct tty_struct *tty)
{
 line_flush_buffer(tty);
}
