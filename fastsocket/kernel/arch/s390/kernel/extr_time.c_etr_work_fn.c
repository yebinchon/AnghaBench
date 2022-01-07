
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct etr_eacr {int ea; int dp; int es; int sl; int e0; int e1; scalar_t__ p1; scalar_t__ p0; } ;
struct TYPE_7__ {scalar_t__ psc0; scalar_t__ psc1; } ;
struct etr_aib {TYPE_1__ esw; } ;
struct TYPE_8__ {TYPE_1__ esw; } ;


 int BUG_ON (int) ;
 scalar_t__ check_sync_clock () ;
 int del_timer_sync (int *) ;
 int disable_sync_clock ;
 scalar_t__ etr_compare_network (TYPE_2__*,TYPE_2__*) ;
 struct etr_eacr etr_eacr ;
 struct etr_eacr etr_handle_events (struct etr_eacr) ;
 struct etr_eacr etr_handle_update (struct etr_aib*,struct etr_eacr) ;
 scalar_t__ etr_lpsc_operational_alt ;
 scalar_t__ etr_lpsc_operational_step ;
 scalar_t__ etr_lpsc_pps_mode ;
 int etr_mode_is_etr (struct etr_eacr) ;
 int etr_mode_is_pps (struct etr_eacr) ;
 TYPE_2__ etr_port0 ;
 scalar_t__ etr_port0_uptodate ;
 TYPE_2__ etr_port1 ;
 scalar_t__ etr_port1_uptodate ;
 scalar_t__ etr_port_valid (TYPE_2__*,int) ;
 int etr_set_sync_timeout () ;
 int etr_set_tolec_timeout (unsigned long long) ;
 scalar_t__ etr_stetr (struct etr_aib*) ;
 scalar_t__ etr_sync_clock_stop (struct etr_aib*,int) ;
 int etr_timer ;
 int etr_tolec ;
 int etr_update_eacr (struct etr_eacr) ;
 int etr_work_mutex ;
 unsigned long long get_clock () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static void etr_work_fn(struct work_struct *work)
{
 unsigned long long now;
 struct etr_eacr eacr;
 struct etr_aib aib;
 int sync_port;


 mutex_lock(&etr_work_mutex);


 eacr = etr_eacr;


 eacr = etr_handle_events(eacr);


 eacr.ea = eacr.p0 || eacr.p1;
 if (!eacr.ea) {

  eacr.dp = eacr.es = eacr.sl = 0;
  on_each_cpu(disable_sync_clock, ((void*)0), 1);
  del_timer_sync(&etr_timer);
  etr_update_eacr(eacr);
  goto out_unlock;
 }


 BUG_ON(etr_stetr(&aib) != 0);
 etr_port0.esw = etr_port1.esw = aib.esw;
 now = get_clock();





 if (now >= etr_tolec + (1600000 << 12))
  eacr = etr_handle_update(&aib, eacr);
 if (eacr.p0 && aib.esw.psc0 == etr_lpsc_pps_mode) {
  eacr.sl = 0;
  eacr.e0 = 1;
  if (!etr_mode_is_pps(etr_eacr))
   eacr.es = 0;
  if (!eacr.es || !eacr.p1 || aib.esw.psc1 != etr_lpsc_pps_mode)
   eacr.e1 = 0;

  else if (etr_port0_uptodate && etr_port1_uptodate)
   eacr.e1 = 1;
  sync_port = (etr_port0_uptodate &&
        etr_port_valid(&etr_port0, 0)) ? 0 : -1;
 } else if (eacr.p1 && aib.esw.psc1 == etr_lpsc_pps_mode) {
  eacr.sl = 0;
  eacr.e0 = 0;
  eacr.e1 = 1;
  if (!etr_mode_is_pps(etr_eacr))
   eacr.es = 0;
  sync_port = (etr_port1_uptodate &&
        etr_port_valid(&etr_port1, 1)) ? 1 : -1;
 } else if (eacr.p0 && aib.esw.psc0 == etr_lpsc_operational_step) {
  eacr.sl = 1;
  eacr.e0 = 1;
  if (!etr_mode_is_etr(etr_eacr))
   eacr.es = 0;
  if (!eacr.es || !eacr.p1 ||
      aib.esw.psc1 != etr_lpsc_operational_alt)
   eacr.e1 = 0;
  else if (etr_port0_uptodate && etr_port1_uptodate &&
    etr_compare_network(&etr_port0, &etr_port1))
   eacr.e1 = 1;
  sync_port = (etr_port0_uptodate &&
        etr_port_valid(&etr_port0, 0)) ? 0 : -1;
 } else if (eacr.p1 && aib.esw.psc1 == etr_lpsc_operational_step) {
  eacr.sl = 1;
  eacr.e0 = 0;
  eacr.e1 = 1;
  if (!etr_mode_is_etr(etr_eacr))
   eacr.es = 0;
  sync_port = (etr_port1_uptodate &&
        etr_port_valid(&etr_port1, 1)) ? 1 : -1;
 } else {

  eacr.es = eacr.sl = 0;
  sync_port = -1;
 }





 if ((eacr.es && check_sync_clock()) || sync_port < 0) {
  etr_update_eacr(eacr);
  etr_set_tolec_timeout(now);
  goto out_unlock;
 }





 eacr.dp = 0;
 eacr.es = 1;
 etr_update_eacr(eacr);
 if (now < etr_tolec + (1600000 << 12) ||
     etr_sync_clock_stop(&aib, sync_port) != 0) {

  eacr.es = 0;
  etr_update_eacr(eacr);
  etr_set_sync_timeout();
 } else
  etr_set_tolec_timeout(now);
out_unlock:
 mutex_unlock(&etr_work_mutex);
}
