
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct smt_timer {int tm_token; int tm_delta; struct smt_timer* tm_next; int tm_active; struct s_smc* tm_smc; } ;
struct TYPE_2__ {struct smt_timer* st_queue; } ;
struct s_smc {TYPE_1__ t; } ;


 int TRUE ;
 int hwt_start (struct s_smc*,int) ;
 int smt_timer_stop (struct s_smc*,struct smt_timer*) ;
 int timer_done (struct s_smc*,int ) ;

void smt_timer_start(struct s_smc *smc, struct smt_timer *timer, u_long time,
       u_long token)
{
 struct smt_timer **prev ;
 struct smt_timer *tm ;
 u_long delta = 0 ;

 time /= 16 ;
 if (!time)
  time = 1 ;
 smt_timer_stop(smc,timer) ;
 timer->tm_smc = smc ;
 timer->tm_token = token ;
 timer->tm_active = TRUE ;
 if (!smc->t.st_queue) {
  smc->t.st_queue = timer ;
  timer->tm_next = ((void*)0);
  timer->tm_delta = time ;
  hwt_start(smc,time) ;
  return ;
 }



 timer_done(smc,0) ;




 delta = 0 ;
 for (prev = &smc->t.st_queue ; (tm = *prev) ; prev = &tm->tm_next ) {
  if (delta + tm->tm_delta > time) {
   break ;
  }
  delta += tm->tm_delta ;
 }

 *prev = timer ;
 timer->tm_next = tm ;
 timer->tm_delta = time - delta ;
 if (tm)
  tm->tm_delta -= timer->tm_delta ;



 hwt_start(smc,smc->t.st_queue->tm_delta) ;
}
