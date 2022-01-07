
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct ptp_clock_info {int dummy; } ;


 int efx_phc_adjtime (struct ptp_clock_info*,int ) ;
 int efx_phc_gettime (struct ptp_clock_info*,struct timespec*) ;
 struct timespec timespec_sub (struct timespec const,struct timespec) ;
 int timespec_to_ns (struct timespec*) ;

__attribute__((used)) static int efx_phc_settime(struct ptp_clock_info *ptp,
      const struct timespec *e_ts)
{




 int rc;
 struct timespec time_now;
 struct timespec delta;

 rc = efx_phc_gettime(ptp, &time_now);
 if (rc != 0)
  return rc;

 delta = timespec_sub(*e_ts, time_now);

 rc = efx_phc_adjtime(ptp, timespec_to_ns(&delta));
 if (rc != 0)
  return rc;

 return 0;
}
