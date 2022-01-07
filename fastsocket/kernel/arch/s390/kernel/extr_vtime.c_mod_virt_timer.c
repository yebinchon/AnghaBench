
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int dummy; } ;
typedef int __u64 ;


 int __mod_vtimer (struct vtimer_list*,int ,int ) ;

int mod_virt_timer(struct vtimer_list *timer, __u64 expires)
{
 return __mod_vtimer(timer, expires, 0);
}
