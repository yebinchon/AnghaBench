
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vtimer_list {int dummy; } ;


 int mod_virt_timer_periodic (struct vtimer_list*,int ) ;

__attribute__((used)) static void __appldata_mod_vtimer_wrap(void *p) {
 struct {
  struct vtimer_list *timer;
  u64 expires;
 } *args = p;
 mod_virt_timer_periodic(args->timer, args->expires);
}
