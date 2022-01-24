#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned long long u64 ;
typedef  int u32 ;
struct fw_iso_context {int dummy; } ;
struct iso_context {int /*<<< orphan*/ * header; struct fw_iso_context base; int /*<<< orphan*/  context; scalar_t__ header_length; } ;
struct fw_ohci {int it_context_mask; unsigned long long ir_context_channels; int ir_context_mask; int /*<<< orphan*/  lock; scalar_t__ use_dualbuffer; struct iso_context* ir_context_list; struct iso_context* it_context_list; } ;
struct fw_card {int dummy; } ;
typedef  int /*<<< orphan*/  descriptor_callback_t ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 struct fw_iso_context* FUNC0 (int) ; 
 int FW_ISO_CONTEXT_TRANSMIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct fw_ohci*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 struct fw_ohci* FUNC7 (struct fw_card*) ; 
 int /*<<< orphan*/  handle_ir_dualbuffer_packet ; 
 int /*<<< orphan*/  handle_ir_packet_per_buffer ; 
 int /*<<< orphan*/  handle_it_packet ; 
 int /*<<< orphan*/  FUNC8 (struct iso_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct fw_iso_context *FUNC11(struct fw_card *card,
				int type, int channel, size_t header_size)
{
	struct fw_ohci *ohci = FUNC7(card);
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

	FUNC9(&ohci->lock, flags);
	index = *channels & 1ULL << channel ? FUNC5(*mask) - 1 : -1;
	if (index >= 0) {
		*channels &= ~(1ULL << channel);
		*mask &= ~(1 << index);
	}
	FUNC10(&ohci->lock, flags);

	if (index < 0)
		return FUNC0(-EBUSY);

	if (type == FW_ISO_CONTEXT_TRANSMIT)
		regs = FUNC2(index);
	else
		regs = FUNC1(index);

	ctx = &list[index];
	FUNC8(ctx, 0, sizeof(*ctx));
	ctx->header_length = 0;
	ctx->header = (void *) FUNC3(GFP_KERNEL);
	if (ctx->header == NULL)
		goto out;

	ret = FUNC4(&ctx->context, ohci, regs, callback);
	if (ret < 0)
		goto out_with_header;

	return &ctx->base;

 out_with_header:
	FUNC6((unsigned long)ctx->header);
 out:
	FUNC9(&ohci->lock, flags);
	*mask |= 1 << index;
	FUNC10(&ohci->lock, flags);

	return FUNC0(ret);
}