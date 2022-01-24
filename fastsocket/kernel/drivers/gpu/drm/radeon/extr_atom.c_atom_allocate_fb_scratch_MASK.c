#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct atom_context {int scratch_size_bytes; int /*<<< orphan*/  scratch; scalar_t__ bios; } ;
struct _ATOM_VRAM_USAGE_BY_FIRMWARE {TYPE_1__* asFirmwareVramReserveInfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  usFirmwareUseInKb; int /*<<< orphan*/  ulStartAddrUsedByFirmware; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VRAM_UsageByFirmware ; 
 scalar_t__ FUNC2 (struct atom_context*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct atom_context *ctx)
{
	int index = FUNC1(DATA, VRAM_UsageByFirmware);
	uint16_t data_offset;
	int usage_bytes = 0;
	struct _ATOM_VRAM_USAGE_BY_FIRMWARE *firmware_usage;

	if (FUNC2(ctx, index, NULL, NULL, NULL, &data_offset)) {
		firmware_usage = (struct _ATOM_VRAM_USAGE_BY_FIRMWARE *)(ctx->bios + data_offset);

		FUNC0("atom firmware requested %08x %dkb\n",
			  FUNC5(firmware_usage->asFirmwareVramReserveInfo[0].ulStartAddrUsedByFirmware),
			  FUNC4(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb));

		usage_bytes = FUNC4(firmware_usage->asFirmwareVramReserveInfo[0].usFirmwareUseInKb) * 1024;
	}
	ctx->scratch_size_bytes = 0;
	if (usage_bytes == 0)
		usage_bytes = 20 * 1024;
	/* allocate some scratch memory */
	ctx->scratch = FUNC3(usage_bytes, GFP_KERNEL);
	if (!ctx->scratch)
		return -ENOMEM;
	ctx->scratch_size_bytes = usage_bytes;
	return 0;
}