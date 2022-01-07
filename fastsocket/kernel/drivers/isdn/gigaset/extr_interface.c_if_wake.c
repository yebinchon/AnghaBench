
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {scalar_t__ tty; } ;


 int tty_wakeup (scalar_t__) ;

__attribute__((used)) static void if_wake(unsigned long data)
{
 struct cardstate *cs = (struct cardstate *) data;

 if (cs->tty)
  tty_wakeup(cs->tty);
}
