
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_sync_clock (int *) ;
 int queue_work (int ,int *) ;
 int stp_work ;
 int time_sync_wq ;

void stp_island_check(void)
{
 disable_sync_clock(((void*)0));
 queue_work(time_sync_wq, &stp_work);
}
