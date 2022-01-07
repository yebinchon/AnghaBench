
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; void (* function ) (unsigned long) ;scalar_t__ expires; } ;
struct scc_channel {TYPE_1__ tx_t; } ;


 unsigned long HZ ;
 unsigned long TIMER_OFF ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void __scc_start_tx_timer(struct scc_channel *scc, void (*handler)(unsigned long), unsigned long when)
{
 del_timer(&scc->tx_t);

 if (when == 0)
 {
  handler((unsigned long) scc);
 } else
 if (when != TIMER_OFF)
 {
  scc->tx_t.data = (unsigned long) scc;
  scc->tx_t.function = handler;
  scc->tx_t.expires = jiffies + (when*HZ)/100;
  add_timer(&scc->tx_t);
 }
}
