
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_timer {int cancel; int timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void sci_del_timer(struct sci_timer *tmr)
{
 tmr->cancel = 1;
 del_timer(&tmr->timer);
}
