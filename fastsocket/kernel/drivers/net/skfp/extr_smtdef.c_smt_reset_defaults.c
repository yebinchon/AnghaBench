
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u_long ;
struct smt_config {int build_ring_map; int lct_extended; int lct_long; int lct_medium; int lct_short; int mac_d_max; void* rmt_dup_mac_behavior; int rmt_t_poll; int rmt_t_announce; int rmt_t_jam; int rmt_t_direct; int rmt_t_stuck; int rmt_t_non_op; int ecm_check_poll; int ecm_test_done; int ecm_td_min; int ecm_in_max; int ecm_i_max; int pcm_ns_max; int pcm_t_next_9; int pcm_lc_extended; int pcm_lc_long; int pcm_lc_medium; int pcm_lc_short; int pcm_tl_min; int pcm_t_out; int pcm_c_min; int pcm_tb_max; int pcm_tb_min; int numphys; int sas; scalar_t__ attach_s; } ;
struct TYPE_10__ {scalar_t__ pci_fix_value; } ;
struct TYPE_9__ {int timer_count; int * sba_reply_pend; void* local_sba_active; void* raf_act_timer_poll; void* sync_bw_available; } ;
struct TYPE_8__ {int fddiESSMinSegmentSize; void* fddiESSSynchTxMode; int fddiESSCategory; void* fddiESSMaxTNeg; scalar_t__ fddiESSOverhead; scalar_t__ fddiESSPayload; } ;
struct TYPE_7__ {void** last_tok_time; } ;
struct TYPE_6__ {int smc_version; } ;
struct s_smc {TYPE_5__ hw; TYPE_4__ ess; TYPE_3__ mib; struct smt_config s; TYPE_2__ sm; TYPE_1__ os; } ;


 int DEFAULT_CHECK_POLL ;
 int DEFAULT_C_MIN ;
 int DEFAULT_D_MAX ;
 int DEFAULT_IN_MAX ;
 int DEFAULT_I_MAX ;
 int DEFAULT_LCT_EXTEND ;
 int DEFAULT_LCT_LONG ;
 int DEFAULT_LCT_MEDIUM ;
 int DEFAULT_LCT_SHORT ;
 int DEFAULT_LC_EXTENDED ;
 int DEFAULT_LC_LONG ;
 int DEFAULT_LC_MEDIUM ;
 int DEFAULT_LC_SHORT ;
 int DEFAULT_NS_MAX ;
 int DEFAULT_POLL ;
 int DEFAULT_TB_MAX ;
 int DEFAULT_TB_MIN ;
 int DEFAULT_TD_MIN ;
 int DEFAULT_TEST_DONE ;
 int DEFAULT_TL_MIN ;
 int DEFAULT_T_ANNOUNCE ;
 int DEFAULT_T_DIRECT ;
 int DEFAULT_T_JAM ;
 int DEFAULT_T_NEXT_9 ;
 int DEFAULT_T_NON_OP ;
 int DEFAULT_T_OUT ;
 int DEFAULT_T_STUCK ;
 void* FALSE ;
 scalar_t__ MS2BCLK (int) ;
 int NUMMACS ;
 int NUMPHYS ;
 int SB_STATIC ;
 int SMC_VERSION ;
 int SMT_DAS ;
 void* smt_get_time () ;
 int smt_init_mib (struct s_smc*,int) ;
 int smt_init_sba (struct s_smc*,int) ;

void smt_reset_defaults(struct s_smc *smc, int level)
{
 struct smt_config *smt ;
 int i ;
 u_long smt_boot_time;


 smt_init_mib(smc,level) ;

 smc->os.smc_version = SMC_VERSION ;
 smt_boot_time = smt_get_time();
 for( i = 0; i < NUMMACS; i++ )
  smc->sm.last_tok_time[i] = smt_boot_time ;
 smt = &smc->s ;
 smt->attach_s = 0 ;
 smt->build_ring_map = 1 ;
 smt->sas = SMT_DAS ;
 smt->numphys = NUMPHYS ;
 smt->pcm_tb_min = DEFAULT_TB_MIN ;
 smt->pcm_tb_max = DEFAULT_TB_MAX ;
 smt->pcm_c_min = DEFAULT_C_MIN ;
 smt->pcm_t_out = DEFAULT_T_OUT ;
 smt->pcm_tl_min = DEFAULT_TL_MIN ;
 smt->pcm_lc_short = DEFAULT_LC_SHORT ;
 smt->pcm_lc_medium = DEFAULT_LC_MEDIUM ;
 smt->pcm_lc_long = DEFAULT_LC_LONG ;
 smt->pcm_lc_extended = DEFAULT_LC_EXTENDED ;
 smt->pcm_t_next_9 = DEFAULT_T_NEXT_9 ;
 smt->pcm_ns_max = DEFAULT_NS_MAX ;
 smt->ecm_i_max = DEFAULT_I_MAX ;
 smt->ecm_in_max = DEFAULT_IN_MAX ;
 smt->ecm_td_min = DEFAULT_TD_MIN ;
 smt->ecm_test_done = DEFAULT_TEST_DONE ;
 smt->ecm_check_poll = DEFAULT_CHECK_POLL ;
 smt->rmt_t_non_op = DEFAULT_T_NON_OP ;
 smt->rmt_t_stuck = DEFAULT_T_STUCK ;
 smt->rmt_t_direct = DEFAULT_T_DIRECT ;
 smt->rmt_t_jam = DEFAULT_T_JAM ;
 smt->rmt_t_announce = DEFAULT_T_ANNOUNCE ;
 smt->rmt_t_poll = DEFAULT_POLL ;
        smt->rmt_dup_mac_behavior = FALSE ;
 smt->mac_d_max = DEFAULT_D_MAX ;

 smt->lct_short = DEFAULT_LCT_SHORT ;
 smt->lct_medium = DEFAULT_LCT_MEDIUM ;
 smt->lct_long = DEFAULT_LCT_LONG ;
 smt->lct_extended = DEFAULT_LCT_EXTEND ;
}
