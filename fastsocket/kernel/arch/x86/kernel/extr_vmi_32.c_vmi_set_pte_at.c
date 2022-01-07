
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
typedef int pte_t ;
struct TYPE_2__ {int (* set_pte ) (int ,int *,int ) ;} ;


 int VMI_PAGE_PT ;
 int stub1 (int ,int *,int ) ;
 int vmi_flags_addr (struct mm_struct*,unsigned long,int ,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_set_pte_at(struct mm_struct *mm, unsigned long addr, pte_t *ptep, pte_t pte)
{
 vmi_ops.set_pte(pte, ptep, vmi_flags_addr(mm, addr, VMI_PAGE_PT, 0));
}
