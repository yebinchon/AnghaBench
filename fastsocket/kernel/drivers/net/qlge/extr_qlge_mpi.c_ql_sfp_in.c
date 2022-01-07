
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;
struct mbox_params {int out_count; } ;


 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_get_mb_sts (struct ql_adapter*,struct mbox_params*) ;

__attribute__((used)) static int ql_sfp_in(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int status;

 mbcp->out_count = 5;

 status = ql_get_mb_sts(qdev, mbcp);
 if (status)
  netif_err(qdev, drv, qdev->ndev, "SFP in AEN broken!\n");
 else
  netif_err(qdev, drv, qdev->ndev, "SFP insertion detected.\n");

 return status;
}
