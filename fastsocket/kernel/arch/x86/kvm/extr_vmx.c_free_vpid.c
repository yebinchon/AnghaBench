
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {scalar_t__ vpid; } ;


 int __clear_bit (scalar_t__,int ) ;
 int enable_vpid ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmx_vpid_bitmap ;
 int vmx_vpid_lock ;

__attribute__((used)) static void free_vpid(struct vcpu_vmx *vmx)
{
 if (!enable_vpid)
  return;
 spin_lock(&vmx_vpid_lock);
 if (vmx->vpid != 0)
  __clear_bit(vmx->vpid, vmx_vpid_bitmap);
 spin_unlock(&vmx_vpid_lock);
}
