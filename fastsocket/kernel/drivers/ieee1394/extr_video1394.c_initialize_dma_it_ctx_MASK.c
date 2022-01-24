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
struct ti_ohci {int dummy; } ;
struct dma_iso_ctx {int flags; int syt_offset; int num_desc; int ctx; int /*<<< orphan*/  ctrlClear; scalar_t__ ohci; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI1394_IsoXmitIntMaskSet ; 
 int /*<<< orphan*/  FUNC0 (struct dma_iso_ctx*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_ohci*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ti_ohci*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct dma_iso_ctx *d, int sync_tag,
				  unsigned int syt_offset, int flags)
{
	struct ti_ohci *ohci = (struct ti_ohci *)d->ohci;
	int i;

	d->flags = flags;
	d->syt_offset = (syt_offset == 0 ? 11000 : syt_offset);

	FUNC1(ohci, d->ctrlClear, NULL);

	for (i=0;i<d->num_desc;i++)
		FUNC0(d, i, sync_tag);

	/* Set up isoRecvIntMask to generate interrupts */
	FUNC2(ohci, OHCI1394_IsoXmitIntMaskSet, 1<<d->ctx);
}