
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int conn_table; int ep_array; int cid_array; int eh_sgl_hndl_base; int io_sgl_hndl_base; } ;


 int BEISCSI_LOG_INIT ;
 int CMD_CONNECTION_CHUTE_0 ;
 int KERN_WARNING ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*) ;
 int hwi_cleanup (struct beiscsi_hba*) ;
 int hwi_purge_eq (struct beiscsi_hba*) ;
 int kfree (int ) ;
 int mgmt_epfw_cleanup (struct beiscsi_hba*,int ) ;

__attribute__((used)) static void beiscsi_clean_port(struct beiscsi_hba *phba)
{
 int mgmt_status;

 mgmt_status = mgmt_epfw_cleanup(phba, CMD_CONNECTION_CHUTE_0);
 if (mgmt_status)
  beiscsi_log(phba, KERN_WARNING, BEISCSI_LOG_INIT,
       "BM_%d : mgmt_epfw_cleanup FAILED\n");

 hwi_purge_eq(phba);
 hwi_cleanup(phba);
 kfree(phba->io_sgl_hndl_base);
 kfree(phba->eh_sgl_hndl_base);
 kfree(phba->cid_array);
 kfree(phba->ep_array);
 kfree(phba->conn_table);
}
