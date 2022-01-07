
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int media_checker; } ;


 int queue_work (int ,int *) ;
 int workqueue ;

void memstick_detect_change(struct memstick_host *host)
{
 queue_work(workqueue, &host->media_checker);
}
