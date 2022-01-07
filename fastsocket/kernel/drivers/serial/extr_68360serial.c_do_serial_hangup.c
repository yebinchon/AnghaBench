
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {struct tty_struct* tty; } ;
struct async_struct {TYPE_1__ port; } ;


 int tty_hangup (struct tty_struct*) ;

__attribute__((used)) static void do_serial_hangup(void *private_)
{
 struct async_struct *info = (struct async_struct *) private_;
 struct tty_struct *tty;

 tty = info->port.tty;
 if (!tty)
  return;

 tty_hangup(tty);
}
