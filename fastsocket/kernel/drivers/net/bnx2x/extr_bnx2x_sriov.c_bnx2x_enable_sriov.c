
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int requested_nr_virtfn; int pdev; } ;


 int BNX2X_ERR (char*,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int) ;
 int pci_enable_sriov (int ,int) ;

int bnx2x_enable_sriov(struct bnx2x *bp)
{
 int rc = 0, req_vfs = bp->requested_nr_virtfn;

 rc = pci_enable_sriov(bp->pdev, req_vfs);
 if (rc) {
  BNX2X_ERR("pci_enable_sriov failed with %d\n", rc);
  return rc;
 }
 DP(BNX2X_MSG_IOV, "sriov enabled (%d vfs)\n", req_vfs);
 return req_vfs;
}
