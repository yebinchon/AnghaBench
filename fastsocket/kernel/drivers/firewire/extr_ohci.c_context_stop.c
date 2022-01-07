
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct context {int regs; int ohci; } ;


 int CONTEXT_ACTIVE ;
 int CONTEXT_RUN ;
 int CONTROL_CLEAR (int ) ;
 int CONTROL_SET (int ) ;
 int flush_writes (int ) ;
 int fw_error (char*,int) ;
 int mdelay (int) ;
 int reg_read (int ,int ) ;
 int reg_write (int ,int ,int ) ;

__attribute__((used)) static void context_stop(struct context *ctx)
{
 u32 reg;
 int i;

 reg_write(ctx->ohci, CONTROL_CLEAR(ctx->regs), CONTEXT_RUN);
 flush_writes(ctx->ohci);

 for (i = 0; i < 10; i++) {
  reg = reg_read(ctx->ohci, CONTROL_SET(ctx->regs));
  if ((reg & CONTEXT_ACTIVE) == 0)
   return;

  mdelay(1);
 }
 fw_error("Error: DMA context still active (0x%08x)\n", reg);
}
