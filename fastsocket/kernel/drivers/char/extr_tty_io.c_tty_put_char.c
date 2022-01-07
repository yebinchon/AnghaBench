
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* put_char ) (struct tty_struct*,unsigned char) ;int (* write ) (struct tty_struct*,unsigned char*,int) ;} ;


 int stub1 (struct tty_struct*,unsigned char) ;
 int stub2 (struct tty_struct*,unsigned char*,int) ;

int tty_put_char(struct tty_struct *tty, unsigned char ch)
{
 if (tty->ops->put_char)
  return tty->ops->put_char(tty, ch);
 return tty->ops->write(tty, &ch, 1);
}
