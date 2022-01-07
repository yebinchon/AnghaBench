
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int pressure; unsigned int x; unsigned int y; } ;
struct corgi_ts {TYPE_1__ tc; } ;


 unsigned int ADSCTRL_ADR_SH ;
 unsigned int ADSCTRL_STS ;
 unsigned long calc_waittime (struct corgi_ts*) ;
 int corgi_ssp_ads7846_get () ;
 int corgi_ssp_ads7846_lock () ;
 int corgi_ssp_ads7846_put (unsigned int) ;
 int corgi_ssp_ads7846_unlock () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned int sync_receive_data_send_cmd (struct corgi_ts*,int,int,unsigned int,unsigned long) ;

__attribute__((used)) static int read_xydata(struct corgi_ts *corgi_ts)
{
 unsigned int x, y, z1, z2;
 unsigned long flags, wait_time;


 local_irq_save(flags);
 corgi_ssp_ads7846_lock();
 wait_time = calc_waittime(corgi_ts);


 sync_receive_data_send_cmd(corgi_ts, 0, 1, 1u, wait_time);


 sync_receive_data_send_cmd(corgi_ts, 1, 1, 1u, wait_time);


 y = sync_receive_data_send_cmd(corgi_ts, 1, 1, 5u, wait_time);


 x = sync_receive_data_send_cmd(corgi_ts, 1, 1, 3u, wait_time);


 z1 = sync_receive_data_send_cmd(corgi_ts, 1, 1, 4u, wait_time);
 z2 = sync_receive_data_send_cmd(corgi_ts, 1, 0, 4u, wait_time);


 corgi_ssp_ads7846_put((1u << ADSCTRL_ADR_SH) | ADSCTRL_STS);
 corgi_ssp_ads7846_get();

 corgi_ssp_ads7846_unlock();
 local_irq_restore(flags);

 if (x== 0 || y == 0 || z1 == 0 || (x * (z2 - z1) / z1) >= 15000) {
  corgi_ts->tc.pressure = 0;
  return 0;
 }

 corgi_ts->tc.x = x;
 corgi_ts->tc.y = y;
 corgi_ts->tc.pressure = (x * (z2 - z1)) / z1;
 return 1;
}
