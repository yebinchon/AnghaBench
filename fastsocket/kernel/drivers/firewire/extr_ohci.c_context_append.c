
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct descriptor_buffer {int buffer_bus; int used; struct descriptor* buffer; } ;
struct descriptor {int dummy; } ;
struct context {int ohci; int regs; TYPE_1__* prev; struct descriptor_buffer* buffer_tail; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int branch_address; } ;


 int CONTEXT_WAKE ;
 int CONTROL_SET (int ) ;
 int cpu_to_le32 (int) ;
 TYPE_1__* find_branch_descriptor (struct descriptor*,int) ;
 int flush_writes (int ) ;
 int reg_write (int ,int ,int ) ;

__attribute__((used)) static void context_append(struct context *ctx,
      struct descriptor *d, int z, int extra)
{
 dma_addr_t d_bus;
 struct descriptor_buffer *desc = ctx->buffer_tail;

 d_bus = desc->buffer_bus + (d - desc->buffer) * sizeof(*d);

 desc->used += (z + extra) * sizeof(*d);
 ctx->prev->branch_address = cpu_to_le32(d_bus | z);
 ctx->prev = find_branch_descriptor(d, z);

 reg_write(ctx->ohci, CONTROL_SET(ctx->regs), CONTEXT_WAKE);
 flush_writes(ctx->ohci);
}
