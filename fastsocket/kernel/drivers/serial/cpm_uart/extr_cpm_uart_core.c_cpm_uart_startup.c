
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int irq; int line; } ;
struct uart_cpm_port {int flags; TYPE_2__* sccp; TYPE_1__* smcp; } ;
struct TYPE_4__ {int scc_gsmrl; int scc_sccm; } ;
struct TYPE_3__ {int smc_smcmr; int smc_smcm; } ;


 int CPM_CR_INIT_TRX ;
 int FLAG_CONSOLE ;
 scalar_t__ IS_SMC (struct uart_cpm_port*) ;
 int SCC_GSMRL_ENR ;
 int SCC_GSMRL_ENT ;
 int SMCMR_REN ;
 int SMCMR_TEN ;
 int SMCM_RX ;
 int UART_SCCM_RX ;
 int clrbits16 (int *,int) ;
 int clrbits32 (int *,int) ;
 int clrbits8 (int *,int ) ;
 int cpm_line_cr_cmd (struct uart_cpm_port*,int ) ;
 int cpm_uart_int ;
 int pr_debug (char*,int ) ;
 int request_irq (int ,int ,int ,char*,struct uart_port*) ;
 int setbits16 (int *,int) ;
 int setbits32 (int *,int) ;
 int setbits8 (int *,int ) ;

__attribute__((used)) static int cpm_uart_startup(struct uart_port *port)
{
 int retval;
 struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;

 pr_debug("CPM uart[%d]:startup\n", port->line);


 if (!(pinfo->flags & FLAG_CONSOLE)) {

  if (IS_SMC(pinfo)) {
   clrbits16(&pinfo->smcp->smc_smcmr, SMCMR_REN);
   clrbits8(&pinfo->smcp->smc_smcm, SMCM_RX);
  } else {
   clrbits32(&pinfo->sccp->scc_gsmrl, SCC_GSMRL_ENR);
   clrbits16(&pinfo->sccp->scc_sccm, UART_SCCM_RX);
  }
  cpm_line_cr_cmd(pinfo, CPM_CR_INIT_TRX);
 }

 retval = request_irq(port->irq, cpm_uart_int, 0, "cpm_uart", port);
 if (retval)
  return retval;


 if (IS_SMC(pinfo)) {
  setbits8(&pinfo->smcp->smc_smcm, SMCM_RX);
  setbits16(&pinfo->smcp->smc_smcmr, (SMCMR_REN | SMCMR_TEN));
 } else {
  setbits16(&pinfo->sccp->scc_sccm, UART_SCCM_RX);
  setbits32(&pinfo->sccp->scc_gsmrl, (SCC_GSMRL_ENR | SCC_GSMRL_ENT));
 }

 return 0;
}
