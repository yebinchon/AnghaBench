
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_clock {int defunct; int clock; int devid; scalar_t__ pps_source; int tsev_wq; } ;


 int device_destroy (int ,int ) ;
 int posix_clock_unregister (int *) ;
 int pps_unregister_source (scalar_t__) ;
 int ptp_class ;
 int ptp_cleanup_sysfs (struct ptp_clock*) ;
 int wake_up_interruptible (int *) ;

int ptp_clock_unregister(struct ptp_clock *ptp)
{
 ptp->defunct = 1;
 wake_up_interruptible(&ptp->tsev_wq);


 if (ptp->pps_source)
  pps_unregister_source(ptp->pps_source);
 ptp_cleanup_sysfs(ptp);
 device_destroy(ptp_class, ptp->devid);

 posix_clock_unregister(&ptp->clock);
 return 0;
}
