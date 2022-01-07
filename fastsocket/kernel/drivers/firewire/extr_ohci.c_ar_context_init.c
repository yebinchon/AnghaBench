
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fw_ohci {int dummy; } ;
struct ar_context {TYPE_1__* current_buffer; int pointer; int tasklet; struct ar_buffer* last_buffer; struct fw_ohci* ohci; int regs; } ;
struct ar_buffer {TYPE_1__* next; } ;
struct TYPE_2__ {int data; } ;


 int ar_context_add_page (struct ar_context*) ;
 int ar_context_tasklet ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static int ar_context_init(struct ar_context *ctx,
      struct fw_ohci *ohci, u32 regs)
{
 struct ar_buffer ab;

 ctx->regs = regs;
 ctx->ohci = ohci;
 ctx->last_buffer = &ab;
 tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);

 ar_context_add_page(ctx);
 ar_context_add_page(ctx);
 ctx->current_buffer = ab.next;
 ctx->pointer = ctx->current_buffer->data;

 return 0;
}
