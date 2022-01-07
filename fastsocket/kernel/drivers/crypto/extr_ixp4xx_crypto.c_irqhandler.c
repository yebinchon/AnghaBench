
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_done_tasklet ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void irqhandler(void *_unused)
{
 tasklet_schedule(&crypto_done_tasklet);
}
