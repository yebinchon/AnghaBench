
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_hw_data {int portnum; } ;


 int CRB_WIN_LOCK_TIMEOUT ;
 int PCIE_SEM7_LOCK ;
 int QLA82XX_CRB_WIN_LOCK_ID ;
 int QLA82XX_PCIE_REG (int ) ;
 int cpu_relax () ;
 int in_atomic () ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;
 int schedule () ;

__attribute__((used)) static int
qla82xx_crb_win_lock(struct qla_hw_data *ha)
{
 int i;
 int done = 0, timeout = 0;

 while (!done) {

  done = qla82xx_rd_32(ha, QLA82XX_PCIE_REG(PCIE_SEM7_LOCK));
  if (done == 1)
   break;
  if (timeout >= CRB_WIN_LOCK_TIMEOUT)
   return -1;
  timeout++;


  if (!in_atomic())
   schedule();
  else {
   for (i = 0; i < 20; i++)
    cpu_relax();
  }
 }
 qla82xx_wr_32(ha, QLA82XX_CRB_WIN_LOCK_ID, ha->portnum);
 return 0;
}
