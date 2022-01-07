
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibm_iic_private {TYPE_1__* vaddr; } ;
struct TYPE_2__ {int intmsk; } ;


 int INTRMSK_EIMTC ;
 int out_8 (int *,int ) ;

__attribute__((used)) static inline void iic_interrupt_mode(struct ibm_iic_private* dev, int enable)
{
 out_8(&dev->vaddr->intmsk, enable ? INTRMSK_EIMTC : 0);
}
