
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_5__ {int* last_tok_time; } ;
struct TYPE_7__ {TYPE_4__* m; } ;
struct TYPE_6__ {scalar_t__ mac_ring_is_up; } ;
struct s_smc {TYPE_1__ sm; TYPE_3__ mib; TYPE_2__ hw; } ;
struct TYPE_8__ {int fddiMACToken_Ct; } ;


 int TICKS_PER_SECOND ;
 int smt_get_time () ;

void smt_emulate_token_ct(struct s_smc *smc, int mac_index)
{
 u_long count;
 u_long time;


 time = smt_get_time();
 count = ((time - smc->sm.last_tok_time[mac_index]) *
     100)/TICKS_PER_SECOND;







 if (smc->hw.mac_ring_is_up){
  smc->mib.m[mac_index].fddiMACToken_Ct += count;
 }


 smc->sm.last_tok_time[mac_index] = time;

}
