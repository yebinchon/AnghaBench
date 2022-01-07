
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vuip ;


 scalar_t__ GRU_INT_MASK ;
 int mb () ;

__attribute__((used)) static inline void
alcor_update_irq_hw(unsigned long mask)
{
 *(vuip)GRU_INT_MASK = mask;
 mb();
}
