
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans_pcie {scalar_t__ n_no_reclaim_cmds; int bc_table_dword; int command_names; int wd_timeout; void* rx_page_order; scalar_t__ rx_buf_size_8k; int no_reclaim_cmds; int cmd_fifo; int cmd_queue; } ;
struct iwl_trans_config {scalar_t__ n_no_reclaim_cmds; int bc_table_dword; int command_names; int queue_watchdog_timeout; scalar_t__ rx_buf_size_8k; int no_reclaim_cmds; int cmd_fifo; int cmd_queue; } ;
struct iwl_trans {int dummy; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ MAX_NO_RECLAIM_CMDS ;
 scalar_t__ WARN_ON (int) ;
 void* get_order (int) ;
 int memcpy (int ,int ,int) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static void iwl_trans_pcie_configure(struct iwl_trans *trans,
         const struct iwl_trans_config *trans_cfg)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 trans_pcie->cmd_queue = trans_cfg->cmd_queue;
 trans_pcie->cmd_fifo = trans_cfg->cmd_fifo;
 if (WARN_ON(trans_cfg->n_no_reclaim_cmds > MAX_NO_RECLAIM_CMDS))
  trans_pcie->n_no_reclaim_cmds = 0;
 else
  trans_pcie->n_no_reclaim_cmds = trans_cfg->n_no_reclaim_cmds;
 if (trans_pcie->n_no_reclaim_cmds)
  memcpy(trans_pcie->no_reclaim_cmds, trans_cfg->no_reclaim_cmds,
         trans_pcie->n_no_reclaim_cmds * sizeof(u8));

 trans_pcie->rx_buf_size_8k = trans_cfg->rx_buf_size_8k;
 if (trans_pcie->rx_buf_size_8k)
  trans_pcie->rx_page_order = get_order(8 * 1024);
 else
  trans_pcie->rx_page_order = get_order(4 * 1024);

 trans_pcie->wd_timeout =
  msecs_to_jiffies(trans_cfg->queue_watchdog_timeout);

 trans_pcie->command_names = trans_cfg->command_names;
 trans_pcie->bc_table_dword = trans_cfg->bc_table_dword;
}
