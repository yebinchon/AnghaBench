
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* mcc_tag; size_t mcc_alloc_index; scalar_t__ mcc_tag_available; scalar_t__* mcc_numtag; } ;
struct beiscsi_hba {TYPE_1__ ctrl; } ;


 int MAX_MCC_CMD ;

unsigned int alloc_mcc_tag(struct beiscsi_hba *phba)
{
 unsigned int tag = 0;

 if (phba->ctrl.mcc_tag_available) {
  tag = phba->ctrl.mcc_tag[phba->ctrl.mcc_alloc_index];
  phba->ctrl.mcc_tag[phba->ctrl.mcc_alloc_index] = 0;
  phba->ctrl.mcc_numtag[tag] = 0;
 }
 if (tag) {
  phba->ctrl.mcc_tag_available--;
  if (phba->ctrl.mcc_alloc_index == (MAX_MCC_CMD - 1))
   phba->ctrl.mcc_alloc_index = 0;
  else
   phba->ctrl.mcc_alloc_index++;
 }
 return tag;
}
