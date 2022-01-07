
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_p_mac_counter {int mc_transmit_ct; int mc_receive_ct; int mc_index; int mc_mib_index; } ;
struct TYPE_3__ {TYPE_2__* m; } ;
struct s_smc {TYPE_1__ mib; } ;
struct TYPE_4__ {int fddiMACTransmit_Ct; int fddiMACCopied_Ct; } ;


 int INDEX_MAC ;
 size_t MAC0 ;
 int SMTSETPARA (struct smt_p_mac_counter*,int ) ;
 int SMT_P_MAC_COUNTER ;
 int mac_index (struct s_smc*,int) ;

__attribute__((used)) static void smt_fill_mac_counter(struct s_smc *smc, struct smt_p_mac_counter *mc)
{
 SMTSETPARA(mc,SMT_P_MAC_COUNTER) ;
 mc->mc_mib_index = INDEX_MAC ;
 mc->mc_index = mac_index(smc,1) ;
 mc->mc_receive_ct = smc->mib.m[MAC0].fddiMACCopied_Ct ;
 mc->mc_transmit_ct = smc->mib.m[MAC0].fddiMACTransmit_Ct ;
}
