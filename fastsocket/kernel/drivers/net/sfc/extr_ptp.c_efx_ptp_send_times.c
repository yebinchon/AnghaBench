
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;
struct pps_event_time {struct timespec ts_real; } ;
struct TYPE_2__ {int* addr; } ;
struct efx_ptp_data {TYPE_1__ start; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;


 scalar_t__ ACCESS_ONCE (int) ;
 scalar_t__ FR_CZ_MC_TREG_SMEM ;
 unsigned int MC_NANOSECOND_BITS ;
 scalar_t__ MC_SMEM_P0_PTP_TIME_OFST ;
 int SYNCHRONISATION_GRANULARITY_NS ;
 int SYNCHRONISE_PERIOD_NS ;
 int _efx_writed (struct efx_nic*,int ,scalar_t__) ;
 int cpu_to_le32 (unsigned int) ;
 int pps_get_ts (struct pps_event_time*) ;
 int timespec_add_ns (struct timespec*,int ) ;
 scalar_t__ timespec_compare (struct timespec*,struct timespec*) ;

__attribute__((used)) static void efx_ptp_send_times(struct efx_nic *efx,
          struct pps_event_time *last_time)
{
 struct pps_event_time now;
 struct timespec limit;
 struct efx_ptp_data *ptp = efx->ptp_data;
 struct timespec start;
 int *mc_running = ptp->start.addr;

 pps_get_ts(&now);
 start = now.ts_real;
 limit = now.ts_real;
 timespec_add_ns(&limit, SYNCHRONISE_PERIOD_NS);


 while ((timespec_compare(&now.ts_real, &limit) < 0) &&
        ACCESS_ONCE(*mc_running)) {
  struct timespec update_time;
  unsigned int host_time;


  update_time = now.ts_real;
  timespec_add_ns(&update_time, SYNCHRONISATION_GRANULARITY_NS);
  do {
   pps_get_ts(&now);
  } while ((timespec_compare(&now.ts_real, &update_time) < 0) &&
    ACCESS_ONCE(*mc_running));


  host_time = (now.ts_real.tv_sec << MC_NANOSECOND_BITS |
        now.ts_real.tv_nsec);

  _efx_writed(efx, cpu_to_le32(host_time),
       FR_CZ_MC_TREG_SMEM + MC_SMEM_P0_PTP_TIME_OFST);
 }
 *last_time = now;
}
