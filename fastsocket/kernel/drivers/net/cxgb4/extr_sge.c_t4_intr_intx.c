
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MYPF_REG (int ) ;
 int PCIE_PF_CLI ;
 int process_intrq (struct adapter*) ;
 int t4_slow_intr_handler (struct adapter*) ;
 int t4_write_reg (struct adapter*,int ,int ) ;

__attribute__((used)) static irqreturn_t t4_intr_intx(int irq, void *cookie)
{
 struct adapter *adap = cookie;

 t4_write_reg(adap, MYPF_REG(PCIE_PF_CLI), 0);
 if (t4_slow_intr_handler(adap) | process_intrq(adap))
  return IRQ_HANDLED;
 return IRQ_NONE;
}
