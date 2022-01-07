
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 unsigned int C_CRTSCTS (struct tty_struct*) ;
 scalar_t__ sx_rtscts ;

__attribute__((used)) static unsigned int sx_crtscts(struct tty_struct *tty)
{
 if (sx_rtscts)
  return C_CRTSCTS(tty);
 return 1;
}
