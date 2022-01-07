
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* int_mask_class2_RW; void* int_mask_class1_RW; void* int_mask_class0_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int * irqs; int flags; int register_lock; } ;


 int SPU_CONTEXT_FAULT_PENDING ;
 int SPU_CONTEXT_SWITCH_PENDING ;
 int clear_bit (int ,int *) ;
 int eieio () ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 void* spu_int_mask_get (struct spu*,int) ;
 int spu_int_mask_set (struct spu*,int,unsigned long) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static inline void disable_interrupts(struct spu_state *csa, struct spu *spu)
{
 spin_lock_irq(&spu->register_lock);
 if (csa) {
  csa->priv1.int_mask_class0_RW = spu_int_mask_get(spu, 0);
  csa->priv1.int_mask_class1_RW = spu_int_mask_get(spu, 1);
  csa->priv1.int_mask_class2_RW = spu_int_mask_get(spu, 2);
 }
 spu_int_mask_set(spu, 0, 0ul);
 spu_int_mask_set(spu, 1, 0ul);
 spu_int_mask_set(spu, 2, 0ul);
 eieio();
 spin_unlock_irq(&spu->register_lock);






 set_bit(SPU_CONTEXT_SWITCH_PENDING, &spu->flags);
 clear_bit(SPU_CONTEXT_FAULT_PENDING, &spu->flags);
 synchronize_irq(spu->irqs[0]);
 synchronize_irq(spu->irqs[1]);
 synchronize_irq(spu->irqs[2]);
}
