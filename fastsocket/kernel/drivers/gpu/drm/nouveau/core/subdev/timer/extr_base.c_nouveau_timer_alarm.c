
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_timer {int (* alarm ) (struct nouveau_timer*,int ,struct nouveau_alarm*) ;} ;
struct nouveau_alarm {int dummy; } ;


 struct nouveau_timer* nouveau_timer (void*) ;
 int stub1 (struct nouveau_timer*,int ,struct nouveau_alarm*) ;

void
nouveau_timer_alarm(void *obj, u32 nsec, struct nouveau_alarm *alarm)
{
 struct nouveau_timer *ptimer = nouveau_timer(obj);
 ptimer->alarm(ptimer, nsec, alarm);
}
