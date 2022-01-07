
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ehea_mr {struct ehea_adapter* adapter; int vaddr; int handle; } ;
struct ehea_adapter {int pd; int handle; } ;


 int EHEA_MR_ACC_CTRL ;
 int EIO ;
 scalar_t__ H_SUCCESS ;
 scalar_t__ ehea_h_register_smr (int ,int ,int ,int ,int ,struct ehea_mr*) ;

int ehea_gen_smr(struct ehea_adapter *adapter, struct ehea_mr *old_mr,
   struct ehea_mr *shared_mr)
{
 u64 hret;

 hret = ehea_h_register_smr(adapter->handle, old_mr->handle,
       old_mr->vaddr, EHEA_MR_ACC_CTRL,
       adapter->pd, shared_mr);
 if (hret != H_SUCCESS)
  return -EIO;

 shared_mr->adapter = adapter;

 return 0;
}
