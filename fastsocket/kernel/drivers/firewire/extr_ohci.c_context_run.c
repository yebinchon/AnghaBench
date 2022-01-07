
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_ohci {int dummy; } ;
struct context {int regs; TYPE_1__* last; struct fw_ohci* ohci; } ;
struct TYPE_2__ {int branch_address; } ;


 int COMMAND_PTR (int ) ;
 int CONTEXT_RUN ;
 int CONTROL_CLEAR (int ) ;
 int CONTROL_SET (int ) ;
 int flush_writes (struct fw_ohci*) ;
 int le32_to_cpu (int ) ;
 int reg_write (struct fw_ohci*,int ,int) ;

__attribute__((used)) static void context_run(struct context *ctx, u32 extra)
{
 struct fw_ohci *ohci = ctx->ohci;

 reg_write(ohci, COMMAND_PTR(ctx->regs),
    le32_to_cpu(ctx->last->branch_address));
 reg_write(ohci, CONTROL_CLEAR(ctx->regs), ~0);
 reg_write(ohci, CONTROL_SET(ctx->regs), CONTEXT_RUN | extra);
 flush_writes(ohci);
}
