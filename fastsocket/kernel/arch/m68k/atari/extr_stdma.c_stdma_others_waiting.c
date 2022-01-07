
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stdma_wait ;
 int waitqueue_active (int *) ;

int stdma_others_waiting(void)
{
 return waitqueue_active(&stdma_wait);
}
