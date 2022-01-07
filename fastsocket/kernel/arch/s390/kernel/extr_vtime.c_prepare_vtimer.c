
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {scalar_t__ expires; int cpu; int function; } ;


 int BUG_ON (int) ;
 scalar_t__ VTIMER_MAX_SLICE ;
 int get_cpu () ;
 int vtimer_pending (struct vtimer_list*) ;

__attribute__((used)) static inline void prepare_vtimer(struct vtimer_list *timer)
{
 BUG_ON(!timer->function);
 BUG_ON(!timer->expires || timer->expires > VTIMER_MAX_SLICE);
 BUG_ON(vtimer_pending(timer));
 timer->cpu = get_cpu();
}
