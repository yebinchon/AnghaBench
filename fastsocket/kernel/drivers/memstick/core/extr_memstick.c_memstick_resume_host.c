
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstick_host {int lock; scalar_t__ card; } ;


 int memstick_detect_change (struct memstick_host*) ;
 int memstick_power_on (struct memstick_host*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void memstick_resume_host(struct memstick_host *host)
{
 int rc = 0;

 mutex_lock(&host->lock);
 if (host->card)
  rc = memstick_power_on(host);
 mutex_unlock(&host->lock);

 if (!rc)
  memstick_detect_change(host);
}
