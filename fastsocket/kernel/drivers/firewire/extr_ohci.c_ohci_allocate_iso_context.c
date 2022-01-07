
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct fw_iso_context {int dummy; } ;
struct iso_context {int * header; struct fw_iso_context base; int context; scalar_t__ header_length; } ;
struct fw_ohci {int it_context_mask; unsigned long long ir_context_channels; int ir_context_mask; int lock; scalar_t__ use_dualbuffer; struct iso_context* ir_context_list; struct iso_context* it_context_list; } ;
struct fw_card {int dummy; } ;
typedef int descriptor_callback_t ;


 int EBUSY ;
 int ENOMEM ;
 struct fw_iso_context* ERR_PTR (int) ;
 int FW_ISO_CONTEXT_TRANSMIT ;
 int GFP_KERNEL ;
 int OHCI1394_IsoRcvContextBase (int) ;
 int OHCI1394_IsoXmitContextBase (int) ;
 scalar_t__ __get_free_page (int ) ;
 int context_init (int *,struct fw_ohci*,int,int ) ;
 int ffs (int) ;
 int free_page (unsigned long) ;
 struct fw_ohci* fw_ohci (struct fw_card*) ;
 int handle_ir_dualbuffer_packet ;
 int handle_ir_packet_per_buffer ;
 int handle_it_packet ;
 int memset (struct iso_context*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
    int type, int channel, size_t header_size)
{
 struct fw_ohci *ohci = fw_ohci(card);
 struct iso_context *ctx, *list;
 descriptor_callback_t callback;
 u64 *channels, dont_care = ~0ULL;
 u32 *mask, regs;
 unsigned long flags;
 int index, ret = -ENOMEM;

 if (type == FW_ISO_CONTEXT_TRANSMIT) {
  channels = &dont_care;
  mask = &ohci->it_context_mask;
  list = ohci->it_context_list;
  callback = handle_it_packet;
 } else {
  channels = &ohci->ir_context_channels;
  mask = &ohci->ir_context_mask;
  list = ohci->ir_context_list;
  if (ohci->use_dualbuffer)
   callback = handle_ir_dualbuffer_packet;
  else
   callback = handle_ir_packet_per_buffer;
 }

 spin_lock_irqsave(&ohci->lock, flags);
 index = *channels & 1ULL << channel ? ffs(*mask) - 1 : -1;
 if (index >= 0) {
  *channels &= ~(1ULL << channel);
  *mask &= ~(1 << index);
 }
 spin_unlock_irqrestore(&ohci->lock, flags);

 if (index < 0)
  return ERR_PTR(-EBUSY);

 if (type == FW_ISO_CONTEXT_TRANSMIT)
  regs = OHCI1394_IsoXmitContextBase(index);
 else
  regs = OHCI1394_IsoRcvContextBase(index);

 ctx = &list[index];
 memset(ctx, 0, sizeof(*ctx));
 ctx->header_length = 0;
 ctx->header = (void *) __get_free_page(GFP_KERNEL);
 if (ctx->header == ((void*)0))
  goto out;

 ret = context_init(&ctx->context, ohci, regs, callback);
 if (ret < 0)
  goto out_with_header;

 return &ctx->base;

 out_with_header:
 free_page((unsigned long)ctx->header);
 out:
 spin_lock_irqsave(&ohci->lock, flags);
 *mask |= 1 << index;
 spin_unlock_irqrestore(&ohci->lock, flags);

 return ERR_PTR(ret);
}
