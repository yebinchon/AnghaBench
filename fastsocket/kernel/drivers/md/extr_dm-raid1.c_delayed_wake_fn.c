
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int timer_pending; } ;


 int clear_bit (int ,int *) ;
 int wakeup_mirrord (struct mirror_set*) ;

__attribute__((used)) static void delayed_wake_fn(unsigned long data)
{
 struct mirror_set *ms = (struct mirror_set *) data;

 clear_bit(0, &ms->timer_pending);
 wakeup_mirrord(ms);
}
