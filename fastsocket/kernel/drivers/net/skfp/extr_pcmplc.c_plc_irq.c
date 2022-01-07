
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {char* DisconnectFlag; scalar_t__ path_test; int trace_prop; } ;
struct TYPE_8__ {char* fddiSMTECMState; } ;
struct TYPE_6__ {int numphys; } ;
struct s_smc {TYPE_4__ e; TYPE_3__ mib; TYPE_1__ s; struct s_phy* y; } ;
struct s_plc {int ebuf_cont; scalar_t__ p_state; int p_bits; int p_start; int parity_err; int np_err; int b_hls; int b_ils; int b_qls; int b_tne; int b_tpc; int b_pcs; int tpc_exp; int mini_ctr; int vsym_ctr; int phyinv; int ebuf_err; int soft_err; } ;
struct TYPE_7__ {int lem_errors; scalar_t__ lem_on; } ;
struct s_phy {int* r_val; int phy_name; scalar_t__ tr_flag; TYPE_5__* mib; int curr_ls; TYPE_2__ lem; struct s_plc plc; } ;
struct TYPE_10__ {char* fddiPORTPCMState; int fddiPORTLem_Ct; int fddiPORTEBError_Ct; } ;


 int DB_PCMN (int,char*,int,...) ;
 int EC_DISCONNECT ;
 int EC_PATH_TEST ;
 int EC_TRACE_PROP ;
 int ENTITY_BIT (int ) ;
 int ENTITY_PHY (int) ;
 scalar_t__ EVENT_ECM ;
 scalar_t__ EVENT_PCM ;
 scalar_t__ FALSE ;
 char* PC2_TRACE ;
 char* PC8_ACTIVE ;
 int PC_HLS ;
 int PC_ILS ;
 int PC_JOIN ;
 int PC_MLS ;
 int PC_QLS ;
 int PC_SIGNAL ;
 int PC_START ;
 int PLC (int,int ) ;
 int PLC_REV_MASK ;
 int PLC_REV_SN3 ;
 int PL_BREAK_REASON ;






 int PL_CNTRL_B ;
 unsigned int PL_EBUF_ERR ;
 int PL_INTR_MASK ;




 unsigned int PL_LE_CTR ;
 int PL_LE_THRESHOLD ;
 int PL_LINK_ERR_CTR ;
 unsigned int PL_LSDO ;
 unsigned int PL_LS_MATCH ;
 int PL_MATCH_LS ;
 unsigned int PL_MINI_CTR ;
 unsigned int PL_NP_ERR ;
 unsigned int PL_PARITY_ERR ;
 unsigned int PL_PCM_BREAK ;
 unsigned int PL_PCM_CODE ;
 unsigned int PL_PCM_ENABLED ;
 unsigned int PL_PHYINV ;
 int PL_RCV_VECTOR ;
 unsigned int PL_SELF_TEST ;
 int PL_STATUS_A ;
 int PL_STATUS_B ;
 unsigned int PL_TNE_EXPIRED ;
 unsigned int PL_TPC_EXPIRED ;
 unsigned int PL_TRACE_PROP ;
 unsigned int PL_VSYM_CTR ;
 scalar_t__ PS_LCT ;
 scalar_t__ PT_PASSED ;
 scalar_t__ PT_PENDING ;
 int SMT_E0136 ;
 int SMT_E0136_MSG ;
 int SMT_ERR_LOG (struct s_smc*,int ,int ) ;
 scalar_t__ TRUE ;
 int drv_reset_indication (struct s_smc*) ;
 int get_pcmstate (struct s_smc*,int) ;
 int inpw (int ) ;
 int outpw (int ,int) ;
 unsigned int plc_imsk_na ;
 int queue_event (struct s_smc*,scalar_t__,int ) ;

void plc_irq(struct s_smc *smc, int np, unsigned int cmd)

{
 struct s_phy *phy = &smc->y[np] ;
 struct s_plc *plc = &phy->plc ;
 int n ;



 int i ;

 if (np >= smc->s.numphys) {
  plc->soft_err++ ;
  return ;
 }
 if (cmd & PL_EBUF_ERR) {



  if (!plc->ebuf_cont && phy->mib->fddiPORTPCMState == PC8_ACTIVE){






   phy->mib->fddiPORTEBError_Ct ++ ;

  }

  plc->ebuf_err++ ;
  if (plc->ebuf_cont <= 1000) {




   plc->ebuf_cont++ ;
  }
 } else {

  plc->ebuf_cont = 0 ;
 }
 if (cmd & PL_PHYINV) {
  plc->phyinv++ ;
 }
 if (cmd & PL_VSYM_CTR) {
  plc->vsym_ctr++ ;
 }
 if (cmd & PL_MINI_CTR) {
  plc->mini_ctr++ ;
 }
 if (cmd & PL_LE_CTR) {
  int j ;




  j = inpw(PLC(np,PL_LE_THRESHOLD)) ;
  i = inpw(PLC(np,PL_LINK_ERR_CTR)) ;

  if (i < j) {

   i += 256 ;
  }

  if (phy->lem.lem_on) {



   phy->lem.lem_errors += i ;
   phy->mib->fddiPORTLem_Ct += i ;
  }
 }
 if (cmd & PL_TPC_EXPIRED) {
  if (plc->p_state == PS_LCT) {



   ;
  }
  plc->tpc_exp++ ;
 }
 if (cmd & PL_LS_MATCH) {
  switch (inpw(PLC(np,PL_CNTRL_B)) & PL_MATCH_LS) {
  case 130 : phy->curr_ls = PC_ILS ; break ;
  case 131 : phy->curr_ls = PC_HLS ; break ;
  case 129 : phy->curr_ls = PC_MLS ; break ;
  case 128 : phy->curr_ls = PC_QLS ; break ;
  }
 }
 if (cmd & PL_PCM_BREAK) {
  int reason;

  reason = inpw(PLC(np,PL_STATUS_B)) & PL_BREAK_REASON ;

  switch (reason) {
  case 135 : plc->b_pcs++ ; break ;
  case 132 : plc->b_tpc++ ; break ;
  case 133 : plc->b_tne++ ; break ;
  case 134 : plc->b_qls++ ; break ;
  case 136 : plc->b_ils++ ; break ;
  case 137 : plc->b_hls++ ; break ;
  }


  DB_PCMN(1,"PLC %d: MDcF = %x\n", np, smc->e.DisconnectFlag);
  if (smc->e.DisconnectFlag == FALSE) {
   DB_PCMN(1,"PLC %d: restart (reason %x)\n", np, reason);
   queue_event(smc,EVENT_PCM+np,PC_START) ;
  }
  else {
   DB_PCMN(1,"PLC %d: NO!! restart (reason %x)\n", np, reason);
  }
  return ;
 }



 if (cmd & PL_PCM_CODE) {
  queue_event(smc,EVENT_PCM+np,PC_SIGNAL) ;
  n = inpw(PLC(np,PL_RCV_VECTOR)) ;
  for (i = 0 ; i < plc->p_bits ; i++) {
   phy->r_val[plc->p_start+i] = n & 1 ;
   n >>= 1 ;
  }
 }
 else if (cmd & PL_PCM_ENABLED) {
  queue_event(smc,EVENT_PCM+np,PC_JOIN) ;
 }
 if (cmd & PL_TRACE_PROP) {

  if (!phy->tr_flag) {
   DB_PCMN(1,"PCM : irq TRACE_PROP %d %d\n",
    np,smc->mib.fddiSMTECMState) ;
   phy->tr_flag = TRUE ;
   smc->e.trace_prop |= ENTITY_BIT(ENTITY_PHY(np)) ;
   queue_event(smc,EVENT_ECM,EC_TRACE_PROP) ;
  }
 }




 if ((cmd & PL_SELF_TEST) && (phy->mib->fddiPORTPCMState == PC2_TRACE)) {

  if (smc->e.path_test == PT_PASSED) {
   DB_PCMN(1,"PCM : state = %s %d\n", get_pcmstate(smc,np),
    phy->mib->fddiPORTPCMState) ;

   smc->e.path_test = PT_PENDING ;
   queue_event(smc,EVENT_ECM,EC_PATH_TEST) ;
  }
 }
 if (cmd & PL_TNE_EXPIRED) {

  if (phy->mib->fddiPORTPCMState == PC8_ACTIVE) {
   if (!phy->tr_flag) {
      DB_PCMN(1,"PCM %c : PC81 %s\n",phy->phy_name,"NSE");
      queue_event(smc,EVENT_PCM+np,PC_START) ;
      return ;
   }
  }
 }
}
