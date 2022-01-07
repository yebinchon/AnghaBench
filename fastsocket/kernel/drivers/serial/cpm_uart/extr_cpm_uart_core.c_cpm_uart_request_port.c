
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int line; } ;
struct uart_cpm_port {int flags; TYPE_2__* sccp; TYPE_1__* smcp; } ;
struct TYPE_4__ {int scc_gsmrl; int scc_sccm; } ;
struct TYPE_3__ {int smc_smcmr; int smc_smcm; } ;


 int FLAG_CONSOLE ;
 scalar_t__ IS_SMC (struct uart_cpm_port*) ;
 int SCC_GSMRL_ENR ;
 int SCC_GSMRL_ENT ;
 int SMCMR_REN ;
 int SMCMR_TEN ;
 int SMCM_RX ;
 int SMCM_TX ;
 int UART_SCCM_RX ;
 int UART_SCCM_TX ;
 int clrbits16 (int *,int) ;
 int clrbits32 (int *,int) ;
 int clrbits8 (int *,int) ;
 int cpm_uart_allocbuf (struct uart_cpm_port*,int ) ;
 int cpm_uart_init_scc (struct uart_cpm_port*) ;
 int cpm_uart_init_smc (struct uart_cpm_port*) ;
 int cpm_uart_initbd (struct uart_cpm_port*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int cpm_uart_request_port(struct uart_port *port)
{
 struct uart_cpm_port *pinfo = (struct uart_cpm_port *)port;
 int ret;

 pr_debug("CPM uart[%d]:request port\n", port->line);

 if (pinfo->flags & FLAG_CONSOLE)
  return 0;

 if (IS_SMC(pinfo)) {
  clrbits8(&pinfo->smcp->smc_smcm, SMCM_RX | SMCM_TX);
  clrbits16(&pinfo->smcp->smc_smcmr, SMCMR_REN | SMCMR_TEN);
 } else {
  clrbits16(&pinfo->sccp->scc_sccm, UART_SCCM_TX | UART_SCCM_RX);
  clrbits32(&pinfo->sccp->scc_gsmrl, SCC_GSMRL_ENR | SCC_GSMRL_ENT);
 }

 ret = cpm_uart_allocbuf(pinfo, 0);

 if (ret)
  return ret;

 cpm_uart_initbd(pinfo);
 if (IS_SMC(pinfo))
  cpm_uart_init_smc(pinfo);
 else
  cpm_uart_init_scc(pinfo);

 return 0;
}
