
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int process_intrq (struct adapter*) ;
 int t4_slow_intr_handler (struct adapter*) ;

__attribute__((used)) static irqreturn_t t4_intr_msi(int irq, void *cookie)
{
 struct adapter *adap = cookie;

 t4_slow_intr_handler(adap);
 process_intrq(adap);
 return IRQ_HANDLED;
}
