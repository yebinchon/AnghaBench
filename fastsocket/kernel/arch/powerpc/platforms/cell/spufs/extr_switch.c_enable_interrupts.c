
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int register_lock; } ;


 int CLASS0_INTR_MASK ;
 unsigned long CLASS1_ENABLE_SEGMENT_FAULT_INTR ;
 unsigned long CLASS1_ENABLE_STORAGE_FAULT_INTR ;
 int CLASS1_INTR_MASK ;
 int CLASS2_INTR_MASK ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int spu_int_mask_set (struct spu*,int,unsigned long) ;
 int spu_int_stat_clear (struct spu*,int,int ) ;

__attribute__((used)) static inline void enable_interrupts(struct spu_state *csa, struct spu *spu)
{
 unsigned long class1_mask = CLASS1_ENABLE_SEGMENT_FAULT_INTR |
     CLASS1_ENABLE_STORAGE_FAULT_INTR;
 spin_lock_irq(&spu->register_lock);
 spu_int_stat_clear(spu, 0, CLASS0_INTR_MASK);
 spu_int_stat_clear(spu, 1, CLASS1_INTR_MASK);
 spu_int_stat_clear(spu, 2, CLASS2_INTR_MASK);
 spu_int_mask_set(spu, 0, 0ul);
 spu_int_mask_set(spu, 1, class1_mask);
 spu_int_mask_set(spu, 2, 0ul);
 spin_unlock_irq(&spu->register_lock);
}
