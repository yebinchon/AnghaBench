
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int pdev_dev; } ;


 int PORT_REG (int,int ) ;
 int RXFIFO_PRTY_ERR ;
 int TXFIFO_PRTY_ERR ;
 int XGMAC_PORT_INT_CAUSE ;
 int dev_alert (int ,char*,int) ;
 int t4_fatal_err (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,int) ;

__attribute__((used)) static void xgmac_intr_handler(struct adapter *adap, int port)
{
 u32 v = t4_read_reg(adap, PORT_REG(port, XGMAC_PORT_INT_CAUSE));

 v &= TXFIFO_PRTY_ERR | RXFIFO_PRTY_ERR;
 if (!v)
  return;

 if (v & TXFIFO_PRTY_ERR)
  dev_alert(adap->pdev_dev, "XGMAC %d Tx FIFO parity error\n",
     port);
 if (v & RXFIFO_PRTY_ERR)
  dev_alert(adap->pdev_dev, "XGMAC %d Rx FIFO parity error\n",
     port);
 t4_write_reg(adap, PORT_REG(port, XGMAC_PORT_INT_CAUSE), v);
 t4_fatal_err(adap);
}
