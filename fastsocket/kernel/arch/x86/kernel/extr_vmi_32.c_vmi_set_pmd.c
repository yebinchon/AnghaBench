
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int member_0; int pte; } ;
typedef TYPE_3__ pte_t ;
struct TYPE_10__ {int pgd; } ;
struct TYPE_11__ {TYPE_1__ pgd; } ;
struct TYPE_13__ {TYPE_2__ pud; int pmd; } ;
typedef TYPE_4__ pmd_t ;
struct TYPE_14__ {int (* set_pte ) (TYPE_3__ const,TYPE_3__*,int ) ;} ;


 int VMI_PAGE_PD ;
 int stub1 (TYPE_3__ const,TYPE_3__*,int ) ;
 TYPE_7__ vmi_ops ;

__attribute__((used)) static void vmi_set_pmd(pmd_t *pmdp, pmd_t pmdval)
{



 const pte_t pte = { pmdval.pud.pgd.pgd };

 vmi_ops.set_pte(pte, (pte_t *)pmdp, VMI_PAGE_PD);
}
