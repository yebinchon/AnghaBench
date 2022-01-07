
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int kvm_seq; } ;
struct mm_struct {TYPE_2__ context; } ;
typedef int pgd_t ;
struct TYPE_4__ {unsigned int kvm_seq; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 int VMALLOC_END ;
 int VMALLOC_START ;
 TYPE_3__ init_mm ;
 int memcpy (int ,int ,int) ;
 int pgd_index (int ) ;
 int pgd_offset (struct mm_struct*,int ) ;
 int pgd_offset_k (int ) ;

void __check_kvm_seq(struct mm_struct *mm)
{
 unsigned int seq;

 do {
  seq = init_mm.context.kvm_seq;
  memcpy(pgd_offset(mm, VMALLOC_START),
         pgd_offset_k(VMALLOC_START),
         sizeof(pgd_t) * (pgd_index(VMALLOC_END) -
     pgd_index(VMALLOC_START)));
  mm->context.kvm_seq = seq;
 } while (seq != init_mm.context.kvm_seq);
}
