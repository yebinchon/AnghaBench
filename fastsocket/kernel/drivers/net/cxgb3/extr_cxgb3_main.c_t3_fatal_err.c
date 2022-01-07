
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int flags; int work_lock; int fatal_error_handler_task; } ;


 int A_XGM_RX_CTRL ;
 int A_XGM_TX_CTRL ;
 int CH_ALERT (struct adapter*,char*,...) ;
 int FULL_INIT_DONE ;
 int XGM_REG (int ,int) ;
 int cxgb3_wq ;
 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t3_cim_ctl_blk_read (struct adapter*,int,int,unsigned int*) ;
 int t3_intr_disable (struct adapter*) ;
 int t3_sge_stop (struct adapter*) ;
 int t3_write_reg (struct adapter*,int ,int ) ;

void t3_fatal_err(struct adapter *adapter)
{
 unsigned int fw_status[4];

 if (adapter->flags & FULL_INIT_DONE) {
  t3_sge_stop(adapter);
  t3_write_reg(adapter, A_XGM_TX_CTRL, 0);
  t3_write_reg(adapter, A_XGM_RX_CTRL, 0);
  t3_write_reg(adapter, XGM_REG(A_XGM_TX_CTRL, 1), 0);
  t3_write_reg(adapter, XGM_REG(A_XGM_RX_CTRL, 1), 0);

  spin_lock(&adapter->work_lock);
  t3_intr_disable(adapter);
  queue_work(cxgb3_wq, &adapter->fatal_error_handler_task);
  spin_unlock(&adapter->work_lock);
 }
 CH_ALERT(adapter, "encountered fatal error, operation suspended\n");
 if (!t3_cim_ctl_blk_read(adapter, 0xa0, 4, fw_status))
  CH_ALERT(adapter, "FW status: 0x%x, 0x%x, 0x%x, 0x%x\n",
    fw_status[0], fw_status[1],
    fw_status[2], fw_status[3]);
}
