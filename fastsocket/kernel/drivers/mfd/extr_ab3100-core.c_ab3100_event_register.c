
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct ab3100 {int event_subscribers; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;

int ab3100_event_register(struct ab3100 *ab3100,
     struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&ab3100->event_subscribers,
            nb);
}
