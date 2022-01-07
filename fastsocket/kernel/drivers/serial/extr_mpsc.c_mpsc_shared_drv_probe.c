
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ platform_data; } ;
struct platform_device {scalar_t__ id; TYPE_1__ dev; } ;
struct mpsc_shared_pdata {int intr_mask_val; int intr_cause_val; int tcrr_val; int rcrr_val; int mrr_val; } ;
struct TYPE_4__ {int SDMA_INTR_MASK_m; int SDMA_INTR_CAUSE_m; int MPSC_TCRR_m; int MPSC_RCRR_m; int MPSC_MRR_m; } ;


 int ENODEV ;
 int mpsc_shared_map_regs (struct platform_device*) ;
 TYPE_2__ mpsc_shared_regs ;

__attribute__((used)) static int mpsc_shared_drv_probe(struct platform_device *dev)
{
 struct mpsc_shared_pdata *pdata;
 int rc = -ENODEV;

 if (dev->id == 0) {
  if (!(rc = mpsc_shared_map_regs(dev))) {
   pdata = (struct mpsc_shared_pdata *)
    dev->dev.platform_data;

   mpsc_shared_regs.MPSC_MRR_m = pdata->mrr_val;
   mpsc_shared_regs.MPSC_RCRR_m= pdata->rcrr_val;
   mpsc_shared_regs.MPSC_TCRR_m= pdata->tcrr_val;
   mpsc_shared_regs.SDMA_INTR_CAUSE_m =
    pdata->intr_cause_val;
   mpsc_shared_regs.SDMA_INTR_MASK_m =
    pdata->intr_mask_val;

   rc = 0;
  }
 }

 return rc;
}
