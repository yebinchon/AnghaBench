
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int workqueue ;

__attribute__((used)) static void mmc_flush_scheduled_work(void)
{
 flush_workqueue(workqueue);
}
