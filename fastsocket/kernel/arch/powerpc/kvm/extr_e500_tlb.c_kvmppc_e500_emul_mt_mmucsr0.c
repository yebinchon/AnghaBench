
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct kvmppc_vcpu_e500 {int* guest_tlb_size; } ;


 int EMULATE_DONE ;
 int MMUCSR0_TLB0FI ;
 int MMUCSR0_TLB1FI ;
 int _tlbil_all () ;
 int kvmppc_e500_gtlbe_invalidate (struct kvmppc_vcpu_e500*,int,int) ;

int kvmppc_e500_emul_mt_mmucsr0(struct kvmppc_vcpu_e500 *vcpu_e500, ulong value)
{
 int esel;

 if (value & MMUCSR0_TLB0FI)
  for (esel = 0; esel < vcpu_e500->guest_tlb_size[0]; esel++)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, 0, esel);
 if (value & MMUCSR0_TLB1FI)
  for (esel = 0; esel < vcpu_e500->guest_tlb_size[1]; esel++)
   kvmppc_e500_gtlbe_invalidate(vcpu_e500, 1, esel);

 _tlbil_all();

 return EMULATE_DONE;
}
