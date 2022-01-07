
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int pdev; } ;


 int BNX2X_MSG_IOV ;
 int DP (int ,char*) ;
 int IS_SRIOV (struct bnx2x*) ;
 int __bnx2x_iov_free_vfdb (struct bnx2x*) ;
 int pci_disable_sriov (int ) ;

void bnx2x_iov_remove_one(struct bnx2x *bp)
{

 if (!IS_SRIOV(bp))
  return;

 DP(BNX2X_MSG_IOV, "about to call disable sriov\n");
 pci_disable_sriov(bp->pdev);
 DP(BNX2X_MSG_IOV, "sriov disabled\n");


 __bnx2x_iov_free_vfdb(bp);
}
