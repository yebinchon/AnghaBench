
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipr_ioa_cfg {TYPE_1__* pdev; int errors_logged; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;

__attribute__((used)) static void ipr_unit_check_no_data(struct ipr_ioa_cfg *ioa_cfg)
{
 ioa_cfg->errors_logged++;
 dev_err(&ioa_cfg->pdev->dev, "IOA unit check with no data\n");
}
