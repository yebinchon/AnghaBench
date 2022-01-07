
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct MessageUnit_C {int outbound_doorbell_clear; int outbound_doorbell; } ;
struct AdapterControlBlock {scalar_t__ pmuC; } ;


 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE ;
 int ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR ;
 int msleep (int) ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static uint8_t arcmsr_hbc_wait_msgint_ready(struct AdapterControlBlock *pACB)
{
 struct MessageUnit_C *phbcmu = (struct MessageUnit_C *)pACB->pmuC;
 unsigned char Retries = 0x00;
 uint32_t Index;
 do {
  for (Index = 0; Index < 100; Index++) {
   if (readl(&phbcmu->outbound_doorbell) & ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE) {
    writel(ARCMSR_HBCMU_IOP2DRV_MESSAGE_CMD_DONE_DOORBELL_CLEAR, &phbcmu->outbound_doorbell_clear);
    return 1;
   }

   msleep(10);
  }
 } while (Retries++ < 20);
 return 0;
}
