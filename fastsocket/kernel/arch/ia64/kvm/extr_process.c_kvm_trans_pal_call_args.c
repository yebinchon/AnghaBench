
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thash_data {unsigned long page_flags; unsigned long gpaddr; int ps; } ;
struct kvm_vcpu {int dummy; } ;


 int D_TLB ;
 unsigned long PAGEALIGN (unsigned long,int ) ;
 int PSIZE (int ) ;
 unsigned long _PAGE_PPN_MASK ;
 scalar_t__ __va (unsigned long) ;
 int is_physical_mode (struct kvm_vcpu*) ;
 unsigned long kvm_gpa_to_mpa (unsigned long) ;
 struct thash_data* vhpt_lookup (unsigned long) ;
 struct thash_data* vtlb_lookup (struct kvm_vcpu*,unsigned long,int ) ;

__attribute__((used)) static unsigned long kvm_trans_pal_call_args(struct kvm_vcpu *vcpu,
      unsigned long arg)
{
 struct thash_data *data;
 unsigned long gpa, poff;

 if (!is_physical_mode(vcpu)) {

  data = vtlb_lookup(vcpu, arg, D_TLB);
  if (data)
   gpa = data->page_flags & _PAGE_PPN_MASK;
  else {
   data = vhpt_lookup(arg);
   if (!data)
    return 0;
   gpa = data->gpaddr & _PAGE_PPN_MASK;
  }

  poff = arg & (PSIZE(data->ps) - 1);
  arg = PAGEALIGN(gpa, data->ps) | poff;
 }
 arg = kvm_gpa_to_mpa(arg << 1 >> 1);

 return (unsigned long)__va(arg);
}
