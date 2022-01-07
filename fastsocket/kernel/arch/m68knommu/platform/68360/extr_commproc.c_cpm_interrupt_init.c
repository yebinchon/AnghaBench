
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intr_cicr; scalar_t__ intr_cimr; } ;


 int CICR_HP_MASK ;
 int CICR_SCA_SCC1 ;
 int CICR_SCB_SCC2 ;
 int CICR_SCC_SCC3 ;
 int CICR_SCD_SCC4 ;
 int CICR_SPS ;
 int CPM_INTERRUPT ;
 int CPM_VECTOR_BASE ;
 TYPE_1__* pquicc ;

void
cpm_interrupt_init(void)
{




 pquicc->intr_cicr =
  (CICR_SCD_SCC4 | CICR_SCC_SCC3 | CICR_SCB_SCC2 | CICR_SCA_SCC1) |
  (CPM_INTERRUPT << 13) |
  CICR_HP_MASK |
  (CPM_VECTOR_BASE << 5) |
  CICR_SPS;


 pquicc->intr_cimr = 0;
}
