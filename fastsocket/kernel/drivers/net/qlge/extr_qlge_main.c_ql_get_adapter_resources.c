
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;


 int ENOMEM ;
 int ifup ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 scalar_t__ ql_alloc_mem_resources (struct ql_adapter*) ;
 int ql_request_irq (struct ql_adapter*) ;

__attribute__((used)) static int ql_get_adapter_resources(struct ql_adapter *qdev)
{
 int status = 0;

 if (ql_alloc_mem_resources(qdev)) {
  netif_err(qdev, ifup, qdev->ndev, "Unable to  allocate memory.\n");
  return -ENOMEM;
 }
 status = ql_request_irq(qdev);
 return status;
}
