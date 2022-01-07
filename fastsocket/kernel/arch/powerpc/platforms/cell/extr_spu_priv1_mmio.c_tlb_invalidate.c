
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int tlb_invalidate_entry_W; } ;


 int out_be64 (int *,unsigned long) ;

__attribute__((used)) static void tlb_invalidate(struct spu *spu)
{
 out_be64(&spu->priv1->tlb_invalidate_entry_W, 0ul);
}
