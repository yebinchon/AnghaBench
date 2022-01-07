
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int GUEST_CS_AR_BYTES ;
 int vmcs_read32 (int ) ;

__attribute__((used)) static void vmx_get_cs_db_l_bits(struct kvm_vcpu *vcpu, int *db, int *l)
{
 u32 ar = vmcs_read32(GUEST_CS_AR_BYTES);

 *db = (ar >> 14) & 1;
 *l = (ar >> 13) & 1;
}
