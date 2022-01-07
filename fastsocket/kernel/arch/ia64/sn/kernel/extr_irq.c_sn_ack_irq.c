
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ sn_in_service_ivecs; } ;


 int HUB_L (int*) ;
 int HUB_S (int*,int) ;
 scalar_t__ LOCAL_MMR_ADDR (int ) ;
 int SH_ALL_INT_MASK ;
 int SH_EVENT_OCCURRED ;
 int SH_EVENT_OCCURRED_ALIAS ;
 int __set_bit (unsigned int,void volatile*) ;
 int move_native_irq (unsigned int) ;
 TYPE_1__* pda ;

__attribute__((used)) static void sn_ack_irq(unsigned int irq)
{
 u64 event_occurred, mask;

 irq = irq & 0xff;
 event_occurred = HUB_L((u64*)LOCAL_MMR_ADDR(SH_EVENT_OCCURRED));
 mask = event_occurred & SH_ALL_INT_MASK;
 HUB_S((u64*)LOCAL_MMR_ADDR(SH_EVENT_OCCURRED_ALIAS), mask);
 __set_bit(irq, (volatile void *)pda->sn_in_service_ivecs);

 move_native_irq(irq);
}
