
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tm_next; int tm_active; } ;
struct TYPE_4__ {TYPE_1__ st_fast; int * st_queue; } ;
struct s_smc {TYPE_2__ t; } ;


 int FALSE ;
 int hwt_init (struct s_smc*) ;

void smt_timer_init(struct s_smc *smc)
{
 smc->t.st_queue = ((void*)0);
 smc->t.st_fast.tm_active = FALSE ;
 smc->t.st_fast.tm_next = ((void*)0);
 hwt_init(smc) ;
}
