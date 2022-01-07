
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCAL_TIMER_IPI ;
 int send_IPI_allbutself (int ,int) ;

void smp_send_timer(void)
{
 send_IPI_allbutself(LOCAL_TIMER_IPI, 1);
}
