
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int dummy; } ;


 int IDC_LOCK_TIMEOUT ;
 int PCIE_SEM5_LOCK ;
 int QLA82XX_PCIE_REG (int ) ;
 int cpu_relax () ;
 int in_interrupt () ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int schedule () ;

int
qla82xx_idc_lock(struct qla_hw_data *ha)
{
 int i;
 int done = 0, timeout = 0;

 while (!done) {

  done = qla82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM5_LOCK));
  if (done == 1)
   break;
  if (timeout >= IDC_LOCK_TIMEOUT)
   return -1;

  timeout++;


  if (!in_interrupt())
   schedule();
  else {
   for (i = 0; i < 20; i++)
    cpu_relax();
  }
 }

 return 0;
}
