
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_queue {int hba_index; int entry_count; TYPE_1__* phba; } ;
struct TYPE_2__ {int * mbox; } ;


 scalar_t__ unlikely (int) ;

__attribute__((used)) static uint32_t
lpfc_sli4_mq_release(struct lpfc_queue *q)
{

 if (unlikely(!q))
  return 0;


 q->phba->mbox = ((void*)0);
 q->hba_index = ((q->hba_index + 1) % q->entry_count);
 return 1;
}
