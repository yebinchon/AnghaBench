
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int vpid; } ;


 int VMX_NR_VPIDS ;
 int __set_bit (int,int ) ;
 int enable_vpid ;
 int find_first_zero_bit (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vmx_vpid_bitmap ;
 int vmx_vpid_lock ;

__attribute__((used)) static void allocate_vpid(struct vcpu_vmx *vmx)
{
 int vpid;

 vmx->vpid = 0;
 if (!enable_vpid)
  return;
 spin_lock(&vmx_vpid_lock);
 vpid = find_first_zero_bit(vmx_vpid_bitmap, VMX_NR_VPIDS);
 if (vpid < VMX_NR_VPIDS) {
  vmx->vpid = vpid;
  __set_bit(vpid, vmx_vpid_bitmap);
 }
 spin_unlock(&vmx_vpid_lock);
}
