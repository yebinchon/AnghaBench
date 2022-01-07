
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_pmac_port {int port_type; int node; } ;


 int PMAC_FTR_MODEM_ENABLE ;
 int PMAC_FTR_SCC_ENABLE ;
 scalar_t__ ZS_IS_INTMODEM (struct uart_pmac_port*) ;
 int pmac_call_feature (int ,int ,int ,int) ;
 int pmz_debug (char*,int) ;

__attribute__((used)) static int pmz_set_scc_power(struct uart_pmac_port *uap, int state)
{
 int delay = 0;
 int rc;

 if (state) {
  rc = pmac_call_feature(
   PMAC_FTR_SCC_ENABLE, uap->node, uap->port_type, 1);
  pmz_debug("port power on result: %d\n", rc);
  if (ZS_IS_INTMODEM(uap)) {
   rc = pmac_call_feature(
    PMAC_FTR_MODEM_ENABLE, uap->node, 0, 1);
   delay = 2500;
   pmz_debug("modem power result: %d\n", rc);
  }
 } else {



  if (ZS_IS_INTMODEM(uap)) {
   rc = pmac_call_feature(
    PMAC_FTR_MODEM_ENABLE, uap->node, 0, 0);
   pmz_debug("port power off result: %d\n", rc);
  }
  pmac_call_feature(PMAC_FTR_SCC_ENABLE, uap->node, uap->port_type, 0);
 }
 return delay;
}
