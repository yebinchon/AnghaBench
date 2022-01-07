
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int recovery_state; int dev; } ;


 int BNX2X_RECOVERY_FAILED ;
 int PCI_D3hot ;
 int bnx2x_set_power_state (struct bnx2x*,int ) ;
 int bnx2x_set_reset_in_progress (struct bnx2x*) ;
 int netdev_err (int ,char*) ;
 int netif_device_detach (int ) ;
 int smp_mb () ;

__attribute__((used)) static void bnx2x_recovery_failed(struct bnx2x *bp)
{
 netdev_err(bp->dev, "Recovery has failed. Power cycle is needed.\n");


 netif_device_detach(bp->dev);





 bnx2x_set_reset_in_progress(bp);


 bnx2x_set_power_state(bp, PCI_D3hot);

 bp->recovery_state = BNX2X_RECOVERY_FAILED;

 smp_mb();
}
