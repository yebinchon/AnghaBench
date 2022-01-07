
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct smc_regs {int smc_smce; } ;
struct scc_regs {int scc_scce; } ;
struct TYPE_9__ {int last_active; TYPE_1__* state; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_10__ {struct smc_regs* smc_regs; struct scc_regs* scc_regs; } ;
struct TYPE_8__ {int smc_scc_num; } ;


 int NUM_IS_SCC ;
 int PORT_NUM (int) ;
 int SCCM_RX ;
 int SCCM_TX ;
 int SMCM_BRKE ;
 int SMCM_RX ;
 int SMCM_TX ;
 int check_modem_status (TYPE_2__*) ;
 int jiffies ;
 TYPE_6__* pquicc ;
 int printk (char*,...) ;
 int receive_break (TYPE_2__*) ;
 int receive_chars (TYPE_2__*) ;
 int transmit_chars (TYPE_2__*) ;

__attribute__((used)) static void rs_360_interrupt(int vec, void *dev_id)
{
 u_char events;
 int idx;
 ser_info_t *info;
 volatile struct smc_regs *smcp;
 volatile struct scc_regs *sccp;

 info = dev_id;

 idx = PORT_NUM(info->state->smc_scc_num);
 if (info->state->smc_scc_num & NUM_IS_SCC) {
  sccp = &pquicc->scc_regs[idx];
  events = sccp->scc_scce;
  if (events & SCCM_RX)
   receive_chars(info);
  if (events & SCCM_TX)
   transmit_chars(info);
  sccp->scc_scce = events;
 } else {
  smcp = &pquicc->smc_regs[idx];
  events = smcp->smc_smce;
  if (events & SMCM_BRKE)
   receive_break(info);
  if (events & SMCM_RX)
   receive_chars(info);
  if (events & SMCM_TX)
   transmit_chars(info);
  smcp->smc_smce = events;
 }
 info->last_active = jiffies;



}
