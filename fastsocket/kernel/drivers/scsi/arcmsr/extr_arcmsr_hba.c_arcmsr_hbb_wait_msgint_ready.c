
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct MessageUnit_B {int drv2iop_doorbell; int iop2drv_doorbell; } ;
struct AdapterControlBlock {struct MessageUnit_B* pmuB; } ;


 int ARCMSR_DRV2IOP_END_OF_INTERRUPT ;
 int ARCMSR_IOP2DRV_MESSAGE_CMD_DONE ;
 int ARCMSR_MESSAGE_INT_CLEAR_PATTERN ;
 int msleep (int) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static uint8_t arcmsr_hbb_wait_msgint_ready(struct AdapterControlBlock *acb)
{
 struct MessageUnit_B *reg = acb->pmuB;
 uint32_t Index;
 uint8_t Retries = 0x00;
 do {
  for (Index = 0; Index < 100; Index++) {
   if (readl(reg->iop2drv_doorbell)
    & ARCMSR_IOP2DRV_MESSAGE_CMD_DONE) {
    writel(ARCMSR_MESSAGE_INT_CLEAR_PATTERN
     , reg->iop2drv_doorbell);
    writel(ARCMSR_DRV2IOP_END_OF_INTERRUPT, reg->drv2iop_doorbell);
    return 1;
   }
   msleep(10);
  }

 } while (Retries++ < 20);
 return 0;
}
