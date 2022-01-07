
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {int b; int a; } ;
struct desc_ptr {int size; scalar_t__ address; } ;


 int LHCALL_LOAD_IDT_ENTRY ;
 int kvm_hypercall3 (int ,unsigned int,int ,int ) ;

__attribute__((used)) static void lguest_load_idt(const struct desc_ptr *desc)
{
 unsigned int i;
 struct desc_struct *idt = (void *)desc->address;

 for (i = 0; i < (desc->size+1)/8; i++)
  kvm_hypercall3(LHCALL_LOAD_IDT_ENTRY, i, idt[i].a, idt[i].b);
}
