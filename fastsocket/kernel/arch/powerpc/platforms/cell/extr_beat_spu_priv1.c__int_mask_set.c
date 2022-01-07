
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int spe_id; int * shadow_int_mask_RW; } ;


 int beat_set_irq_mask_for_spe (int ,int,int ) ;

__attribute__((used)) static inline void _int_mask_set(struct spu *spu, int class, u64 mask)
{
 spu->shadow_int_mask_RW[class] = mask;
 beat_set_irq_mask_for_spe(spu->spe_id, class, mask);
}
