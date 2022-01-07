
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int xri_bitmap; } ;
struct lpfc_nodelist {TYPE_1__ active_rrqs; } ;
struct lpfc_hba {int dummy; } ;


 scalar_t__ test_bit (int ,int ) ;

int
lpfc_test_rrq_active(struct lpfc_hba *phba, struct lpfc_nodelist *ndlp,
   uint16_t xritag)
{
 if (!ndlp)
  return 0;
 if (test_bit(xritag, ndlp->active_rrqs.xri_bitmap))
   return 1;
 else
  return 0;
}
