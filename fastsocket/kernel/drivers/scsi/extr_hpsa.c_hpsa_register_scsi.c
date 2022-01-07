
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int) ;
 int hpsa_scsi_detect (struct ctlr_info*) ;

__attribute__((used)) static int hpsa_register_scsi(struct ctlr_info *h)
{
 int rc;

 rc = hpsa_scsi_detect(h);
 if (rc != 0)
  dev_err(&h->pdev->dev, "hpsa_register_scsi: failed"
   " hpsa_scsi_detect(), rc is %d\n", rc);
 return rc;
}
