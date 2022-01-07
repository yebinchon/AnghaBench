
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_bc_trans {struct qlcnic_bc_trans* rsp_hdr; struct qlcnic_bc_trans* req_hdr; } ;


 int kfree (struct qlcnic_bc_trans*) ;

__attribute__((used)) static void qlcnic_sriov_cleanup_transaction(struct qlcnic_bc_trans *trans)
{
 if (!trans)
  return;
 kfree(trans->req_hdr);
 kfree(trans->rsp_hdr);
 kfree(trans);
}
