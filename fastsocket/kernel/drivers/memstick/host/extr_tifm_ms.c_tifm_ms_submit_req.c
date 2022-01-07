
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tifm_ms {int notify; } ;
struct memstick_host {int dummy; } ;


 struct tifm_ms* memstick_priv (struct memstick_host*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void tifm_ms_submit_req(struct memstick_host *msh)
{
 struct tifm_ms *host = memstick_priv(msh);

 tasklet_schedule(&host->notify);
}
