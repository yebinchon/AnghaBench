
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct smc_regs {int smc_smcm; } ;
struct scc_regs {int scc_sccm; } ;
struct TYPE_6__ {TYPE_1__* state; } ;
typedef TYPE_2__ ser_info_t ;
struct TYPE_7__ {struct smc_regs* smc_regs; struct scc_regs* scc_regs; } ;
struct TYPE_5__ {int smc_scc_num; } ;


 int NUM_IS_SCC ;
 int PORT_NUM (int) ;
 int SMCM_TX ;
 int UART_SCCM_TX ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_4__* pquicc ;
 scalar_t__ serial_paranoia_check (TYPE_2__*,int ,char*) ;

__attribute__((used)) static void rs_360_start(struct tty_struct *tty)
{
 ser_info_t *info = (ser_info_t *)tty->driver_data;
 int idx;
 unsigned long flags;
 volatile struct scc_regs *sccp;
 volatile struct smc_regs *smcp;

 if (serial_paranoia_check(info, tty->name, "rs_stop"))
  return;

 local_irq_save(flags);
 idx = PORT_NUM(info->state->smc_scc_num);
 if (info->state->smc_scc_num & NUM_IS_SCC) {
  sccp = &pquicc->scc_regs[idx];
  sccp->scc_sccm |= UART_SCCM_TX;
 } else {
  smcp = &pquicc->smc_regs[idx];
  smcp->smc_smcm |= SMCM_TX;
 }
 local_irq_restore(flags);
}
