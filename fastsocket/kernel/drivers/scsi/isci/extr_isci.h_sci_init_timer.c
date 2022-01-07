
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* function ) (unsigned long) ;unsigned long data; } ;
struct sci_timer {TYPE_1__ timer; scalar_t__ cancel; } ;


 int init_timer (TYPE_1__*) ;

__attribute__((used)) static inline
void sci_init_timer(struct sci_timer *tmr, void (*fn)(unsigned long))
{
 tmr->timer.function = fn;
 tmr->timer.data = (unsigned long) tmr;
 tmr->cancel = 0;
 init_timer(&tmr->timer);
}
