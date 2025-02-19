
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_14__ ;
typedef struct TYPE_21__ TYPE_13__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


struct uart_pram {void* max_idl; void* mrblr; } ;
struct smc_uart_pram {int brkcr; void* max_idl; void* mrblr; } ;
struct smc_regs {int smc_smcm; int smc_smcmr; } ;
struct TYPE_28__ {int low; } ;
struct TYPE_29__ {TYPE_5__ w; } ;
struct scc_regs {int scc_sccm; TYPE_6__ scc_gsmr; } ;
struct TYPE_26__ {TYPE_2__* tty; } ;
struct TYPE_21__ {int flags; int MCR; TYPE_12__* state; TYPE_3__ port; int line; } ;
typedef TYPE_13__ ser_info_t ;
struct TYPE_30__ {struct smc_uart_pram u; } ;
struct TYPE_31__ {TYPE_7__ psmc; } ;
struct TYPE_32__ {TYPE_8__ idma_smc; } ;
struct TYPE_27__ {struct uart_pram u; } ;
struct TYPE_25__ {int flags; TYPE_1__* termios; } ;
struct TYPE_24__ {int c_cflag; } ;
struct TYPE_23__ {TYPE_11__* pram; struct smc_regs* smc_regs; struct scc_regs* scc_regs; } ;
struct TYPE_22__ {int irq; int type; int port; } ;
struct TYPE_20__ {int smc_scc_num; size_t port; } ;
struct TYPE_18__ {TYPE_9__ pothers; TYPE_4__ pscc; } ;
struct TYPE_19__ {TYPE_10__ scc; } ;


 int ASYNC_INITIALIZED ;
 int CBAUD ;
 int NUM_IS_SCC ;
 int PORT_NUM (int) ;
 void* RX_BUF_SIZE ;
 int SCC_GSMRL_ENR ;
 int SCC_GSMRL_ENT ;
 int SMCMR_REN ;
 int SMCMR_TEN ;
 int SMCM_RX ;
 int SMCM_TX ;
 int TTY_IO_ERROR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int UART_SCCM_RX ;
 int UART_SCCM_TX ;
 int change_speed (TYPE_13__*) ;
 int clear_bit (int ,int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_16__* pquicc ;
 int printk (char*,int ,int ) ;
 int set_bit (int ,int *) ;
 TYPE_14__* state ;

__attribute__((used)) static int startup(ser_info_t *info)
{
 unsigned long flags;
 int retval=0;
 int idx;

 volatile struct smc_regs *smcp;
 volatile struct scc_regs *sccp;
 volatile struct smc_uart_pram *up;
 volatile struct uart_pram *scup;


 local_irq_save(flags);

 if (info->flags & ASYNC_INITIALIZED) {
  goto errout;
 }
 if (info->port.tty)
  clear_bit(TTY_IO_ERROR, &info->port.tty->flags);




 change_speed(info);

 idx = PORT_NUM(info->state->smc_scc_num);
 if (info->state->smc_scc_num & NUM_IS_SCC) {
  sccp = &pquicc->scc_regs[idx];
  scup = &pquicc->pram[info->state->port].scc.pscc.u;

  scup->mrblr = RX_BUF_SIZE;
  scup->max_idl = RX_BUF_SIZE;

  sccp->scc_sccm |= (UART_SCCM_TX | UART_SCCM_RX);
  sccp->scc_gsmr.w.low |= (SCC_GSMRL_ENR | SCC_GSMRL_ENT);

 } else {
  smcp = &pquicc->smc_regs[idx];



  smcp->smc_smcm |= (SMCM_RX | SMCM_TX);
  smcp->smc_smcmr |= (SMCMR_REN | SMCMR_TEN);
  up = &pquicc->pram[info->state->port].scc.pothers.idma_smc.psmc.u;

  up->mrblr = RX_BUF_SIZE;
  up->max_idl = RX_BUF_SIZE;

  up->brkcr = 1;
 }

 info->flags |= ASYNC_INITIALIZED;
 local_irq_restore(flags);
 return 0;

errout:
 local_irq_restore(flags);
 return retval;
}
