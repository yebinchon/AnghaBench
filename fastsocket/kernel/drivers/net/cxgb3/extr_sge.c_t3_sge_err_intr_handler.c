
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int db_empty_task; int db_full_task; int db_drop_task; } ;


 int A_SG_INT_CAUSE ;
 int A_SG_RSPQ_FL_STATUS ;
 int CH_ALERT (struct adapter*,char*,...) ;
 unsigned int F_FLEMPTY ;
 unsigned int F_HIPIODRBDROPERR ;
 unsigned int F_HIPRIORITYDBEMPTY ;
 unsigned int F_HIPRIORITYDBFULL ;
 unsigned int F_LOPIODRBDROPERR ;
 unsigned int F_LOPRIORITYDBEMPTY ;
 unsigned int F_LOPRIORITYDBFULL ;
 unsigned int F_RSPQCREDITOVERFOW ;
 unsigned int F_RSPQDISABLED ;
 unsigned int SGE_FATALERR ;
 unsigned int SGE_FRAMINGERR ;
 unsigned int SGE_PARERR ;
 unsigned int S_RSPQ0DISABLED ;
 int cxgb3_wq ;
 int queue_work (int ,int *) ;
 int t3_fatal_err (struct adapter*) ;
 unsigned int t3_read_reg (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,unsigned int) ;

void t3_sge_err_intr_handler(struct adapter *adapter)
{
 unsigned int v, status = t3_read_reg(adapter, A_SG_INT_CAUSE) &
     ~F_FLEMPTY;

 if (status & SGE_PARERR)
  CH_ALERT(adapter, "SGE parity error (0x%x)\n",
    status & SGE_PARERR);
 if (status & SGE_FRAMINGERR)
  CH_ALERT(adapter, "SGE framing error (0x%x)\n",
    status & SGE_FRAMINGERR);

 if (status & F_RSPQCREDITOVERFOW)
  CH_ALERT(adapter, "SGE response queue credit overflow\n");

 if (status & F_RSPQDISABLED) {
  v = t3_read_reg(adapter, A_SG_RSPQ_FL_STATUS);

  CH_ALERT(adapter,
    "packet delivered to disabled response queue "
    "(0x%x)\n", (v >> S_RSPQ0DISABLED) & 0xff);
 }

 if (status & (F_HIPIODRBDROPERR | F_LOPIODRBDROPERR))
  queue_work(cxgb3_wq, &adapter->db_drop_task);

 if (status & (F_HIPRIORITYDBFULL | F_LOPRIORITYDBFULL))
  queue_work(cxgb3_wq, &adapter->db_full_task);

 if (status & (F_HIPRIORITYDBEMPTY | F_LOPRIORITYDBEMPTY))
  queue_work(cxgb3_wq, &adapter->db_empty_task);

 t3_write_reg(adapter, A_SG_INT_CAUSE, status);
 if (status & SGE_FATALERR)
  t3_fatal_err(adapter);
}
