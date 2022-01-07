
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * ctl_src_addr; } ;
struct fnic {int vdev; TYPE_2__* lport; int * data_src_addr; TYPE_1__ ctlr; } ;
struct TYPE_4__ {int host; } ;


 int ETH_ALEN ;
 int FNIC_FCS_DBG (int ,int ,char*,int *) ;
 int KERN_DEBUG ;
 scalar_t__ compare_ether_addr (int *,int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;
 int memcpy (int *,int *,int ) ;
 int vnic_dev_add_addr (int ,int *) ;
 int vnic_dev_del_addr (int ,int *) ;

void fnic_update_mac_locked(struct fnic *fnic, u8 *new)
{
 u8 *ctl = fnic->ctlr.ctl_src_addr;
 u8 *data = fnic->data_src_addr;

 if (is_zero_ether_addr(new))
  new = ctl;
 if (!compare_ether_addr(data, new))
  return;
 FNIC_FCS_DBG(KERN_DEBUG, fnic->lport->host, "update_mac %pM\n", new);
 if (!is_zero_ether_addr(data) && compare_ether_addr(data, ctl))
  vnic_dev_del_addr(fnic->vdev, data);
 memcpy(data, new, ETH_ALEN);
 if (compare_ether_addr(new, ctl))
  vnic_dev_add_addr(fnic->vdev, new);
}
