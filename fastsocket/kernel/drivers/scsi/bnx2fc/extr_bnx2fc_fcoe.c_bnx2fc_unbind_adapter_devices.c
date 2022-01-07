
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_hba {int dummy; } ;


 int bnx2fc_free_fw_resc (struct bnx2fc_hba*) ;
 int bnx2fc_free_task_ctx (struct bnx2fc_hba*) ;

__attribute__((used)) static void bnx2fc_unbind_adapter_devices(struct bnx2fc_hba *hba)
{
 bnx2fc_free_fw_resc(hba);
 bnx2fc_free_task_ctx(hba);
}
