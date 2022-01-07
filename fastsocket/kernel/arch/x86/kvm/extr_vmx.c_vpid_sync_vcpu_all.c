
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {scalar_t__ vpid; } ;


 int VMX_VPID_EXTENT_SINGLE_CONTEXT ;
 int __invvpid (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void vpid_sync_vcpu_all(struct vcpu_vmx *vmx)
{
 if (vmx->vpid == 0)
  return;

 __invvpid(VMX_VPID_EXTENT_SINGLE_CONTEXT, vmx->vpid, 0);
}
