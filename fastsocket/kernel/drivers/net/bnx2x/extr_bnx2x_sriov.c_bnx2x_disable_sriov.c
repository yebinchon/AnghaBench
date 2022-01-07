
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int pdev; } ;


 int pci_disable_sriov (int ) ;

void bnx2x_disable_sriov(struct bnx2x *bp)
{
 pci_disable_sriov(bp->pdev);
}
