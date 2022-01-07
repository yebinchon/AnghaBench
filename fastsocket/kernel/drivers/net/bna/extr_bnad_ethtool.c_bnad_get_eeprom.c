
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_eeprom {int magic; scalar_t__ offset; int len; } ;
struct bnad_iocmd_comp {int comp_status; int comp; struct bnad* bnad; } ;
struct TYPE_4__ {int flash; } ;
struct bnad {int bna_lock; int id; TYPE_2__ bna; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int vendor; int device; } ;


 int BFA_STATUS_OK ;
 int EFAULT ;
 int bfa_nw_flash_read_part (int *,scalar_t__,int ,int *,int ,scalar_t__,int ,struct bnad_iocmd_comp*) ;
 int bnad_cb_completion ;
 scalar_t__ bnad_get_flash_partition_by_offset (struct bnad*,scalar_t__,scalar_t__*) ;
 int init_completion (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int
bnad_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
  u8 *bytes)
{
 struct bnad *bnad = netdev_priv(netdev);
 struct bnad_iocmd_comp fcomp;
 u32 flash_part = 0, base_offset = 0;
 unsigned long flags = 0;
 int ret = 0;


 if (eeprom->magic != (bnad->pcidev->vendor |
        (bnad->pcidev->device << 16)))
  return -EFAULT;


 flash_part = bnad_get_flash_partition_by_offset(bnad,
    eeprom->offset, &base_offset);
 if (flash_part == 0)
  return -EFAULT;

 fcomp.bnad = bnad;
 fcomp.comp_status = 0;

 init_completion(&fcomp.comp);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 ret = bfa_nw_flash_read_part(&bnad->bna.flash, flash_part,
    bnad->id, bytes, eeprom->len,
    eeprom->offset - base_offset,
    bnad_cb_completion, &fcomp);
 if (ret != BFA_STATUS_OK) {
  spin_unlock_irqrestore(&bnad->bna_lock, flags);
  goto done;
 }

 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 wait_for_completion(&fcomp.comp);
 ret = fcomp.comp_status;
done:
 return ret;
}
