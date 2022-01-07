
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
typedef int ch ;


 int line_write (struct tty_struct*,unsigned char*,int) ;

int line_put_char(struct tty_struct *tty, unsigned char ch)
{
 return line_write(tty, &ch, sizeof(ch));
}
