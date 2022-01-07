
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_ani_state {scalar_t__ listen_time; scalar_t__ cck_errors; scalar_t__ ofdm_errors; scalar_t__ last_listen; scalar_t__ last_cck_errors; scalar_t__ last_ofdm_errors; } ;



__attribute__((used)) static void
ath5k_ani_period_restart(struct ath5k_ani_state *as)
{

 as->last_ofdm_errors = as->ofdm_errors;
 as->last_cck_errors = as->cck_errors;
 as->last_listen = as->listen_time;

 as->ofdm_errors = 0;
 as->cck_errors = 0;
 as->listen_time = 0;
}
