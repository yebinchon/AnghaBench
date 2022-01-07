
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ehea_mr {int handle; TYPE_1__* adapter; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int EIO ;
 int FORCE_FREE ;
 scalar_t__ H_SUCCESS ;
 int ehea_error (char*) ;
 scalar_t__ ehea_h_free_resource (int ,int ,int ) ;

int ehea_rem_mr(struct ehea_mr *mr)
{
 u64 hret;

 if (!mr || !mr->adapter)
  return -EINVAL;

 hret = ehea_h_free_resource(mr->adapter->handle, mr->handle,
        FORCE_FREE);
 if (hret != H_SUCCESS) {
  ehea_error("destroy MR failed");
  return -EIO;
 }

 return 0;
}
