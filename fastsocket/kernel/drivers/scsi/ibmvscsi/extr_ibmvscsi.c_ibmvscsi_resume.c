
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvscsi_host_data {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* resume ) (struct ibmvscsi_host_data*) ;} ;


 struct ibmvscsi_host_data* dev_get_drvdata (struct device*) ;
 TYPE_1__* ibmvscsi_ops ;
 int stub1 (struct ibmvscsi_host_data*) ;

__attribute__((used)) static int ibmvscsi_resume(struct device *dev)
{
 struct ibmvscsi_host_data *hostdata = dev_get_drvdata(dev);
 return ibmvscsi_ops->resume(hostdata);
}
