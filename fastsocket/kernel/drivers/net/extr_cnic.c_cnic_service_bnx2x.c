
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cnic_local {TYPE_1__* ethdev; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
struct TYPE_2__ {int drv_state; } ;


 int CNIC_DRV_STATE_USING_MSIX ;
 int cnic_chk_pkt_rings (struct cnic_local*) ;
 int cnic_doirq (struct cnic_dev*) ;

__attribute__((used)) static int cnic_service_bnx2x(void *data, void *status_blk)
{
 struct cnic_dev *dev = data;
 struct cnic_local *cp = dev->cnic_priv;

 if (!(cp->ethdev->drv_state & CNIC_DRV_STATE_USING_MSIX))
  cnic_doirq(dev);

 cnic_chk_pkt_rings(cp);

 return 0;
}
