
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int srmcons_callback_lock ;
 int srmcons_do_write (struct tty_struct*,char const*,int) ;

__attribute__((used)) static int
srmcons_write(struct tty_struct *tty,
       const unsigned char *buf, int count)
{
 unsigned long flags;

 spin_lock_irqsave(&srmcons_callback_lock, flags);
 srmcons_do_write(tty, (const char *) buf, count);
 spin_unlock_irqrestore(&srmcons_callback_lock, flags);

 return count;
}
