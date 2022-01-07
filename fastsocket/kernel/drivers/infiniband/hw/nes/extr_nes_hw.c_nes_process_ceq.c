
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct nes_hw_cq {int (* ce_handler ) (struct nes_device*,struct nes_hw_cq*) ;} ;
struct nes_hw_ceq {size_t ceq_head; size_t ceq_size; TYPE_1__* ceq_vbase; } ;
struct nes_device {int dummy; } ;
struct TYPE_2__ {scalar_t__* ceqe_words; } ;


 size_t NES_CEQE_CQ_CTX_HIGH_IDX ;
 size_t NES_CEQE_CQ_CTX_LOW_IDX ;
 int NES_CEQE_VALID ;
 int barrier () ;
 int le32_to_cpu (scalar_t__) ;
 int stub1 (struct nes_device*,struct nes_hw_cq*) ;

__attribute__((used)) static void nes_process_ceq(struct nes_device *nesdev, struct nes_hw_ceq *ceq)
{
 u64 u64temp;
 struct nes_hw_cq *cq;
 u32 head;
 u32 ceq_size;


 head = ceq->ceq_head;
 ceq_size = ceq->ceq_size;

 do {
  if (le32_to_cpu(ceq->ceq_vbase[head].ceqe_words[NES_CEQE_CQ_CTX_HIGH_IDX]) &
    NES_CEQE_VALID) {
   u64temp = (((u64)(le32_to_cpu(ceq->ceq_vbase[head].ceqe_words[NES_CEQE_CQ_CTX_HIGH_IDX]))) << 32) |
      ((u64)(le32_to_cpu(ceq->ceq_vbase[head].ceqe_words[NES_CEQE_CQ_CTX_LOW_IDX])));
   u64temp <<= 1;
   cq = *((struct nes_hw_cq **)&u64temp);

   barrier();
   ceq->ceq_vbase[head].ceqe_words[NES_CEQE_CQ_CTX_HIGH_IDX] = 0;


   cq->ce_handler(nesdev, cq);

   if (++head >= ceq_size)
    head = 0;
  } else {
   break;
  }

 } while (1);

 ceq->ceq_head = head;
}
