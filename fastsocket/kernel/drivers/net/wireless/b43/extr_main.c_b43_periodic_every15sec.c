
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ opensource; } ;
struct b43_phy {int txerr_cnt; TYPE_2__* ops; } ;
struct b43_wldev {int irq_count; int tx_count; int rx_count; int* irq_bit_count; int wl; TYPE_1__ fw; struct b43_phy phy; } ;
struct TYPE_4__ {int (* pwork_15sec ) (struct b43_wldev*) ;} ;


 unsigned int ARRAY_SIZE (int*) ;
 int B43_DBG_VERBOSESTATS ;
 int B43_PHY_TX_BADNESS_LIMIT ;
 int B43_SHM_SCRATCH ;
 int B43_WATCHDOG_REG ;
 int atomic_set (int *,int ) ;
 int b43_controller_restart (struct b43_wldev*,char*) ;
 scalar_t__ b43_debug (struct b43_wldev*,int ) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int) ;
 int b43dbg (int ,char*,int,unsigned int,int) ;
 int b43err (int ,char*) ;
 int stub1 (struct b43_wldev*) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static void b43_periodic_every15sec(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 u16 wdr;

 if (dev->fw.opensource) {


  wdr = b43_shm_read16(dev, B43_SHM_SCRATCH, B43_WATCHDOG_REG);
  if (unlikely(wdr)) {
   b43err(dev->wl, "Firmware watchdog: The firmware died!\n");
   b43_controller_restart(dev, "Firmware watchdog");
   return;
  } else {
   b43_shm_write16(dev, B43_SHM_SCRATCH,
     B43_WATCHDOG_REG, 1);
  }
 }

 if (phy->ops->pwork_15sec)
  phy->ops->pwork_15sec(dev);

 atomic_set(&phy->txerr_cnt, B43_PHY_TX_BADNESS_LIMIT);
 wmb();
}
