
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pt_regs {int cr_ipsr; } ;


 int IA64_PSR_ED ;

__attribute__((used)) static inline void handle_lds(struct kvm_pt_regs *regs)
{
 regs->cr_ipsr |= IA64_PSR_ED;
}
