#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {scalar_t__ tail; scalar_t__ last_flush; int space; int size; } ;
struct TYPE_6__ {int usec_timeout; int dma_access; TYPE_1__* primary; TYPE_3__ prim; } ;
typedef  TYPE_2__ drm_mga_private_t ;
typedef  TYPE_3__ drm_mga_primary_buffer_t ;
struct TYPE_5__ {int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_LOCALS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  MGA_DMAPAD ; 
 int MGA_ENDPRDMASTS ; 
 int MGA_ENGINE_IDLE_MASK ; 
 int /*<<< orphan*/  MGA_PRIMADDRESS ; 
 int /*<<< orphan*/  MGA_PRIMEND ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGA_STATUS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(drm_mga_private_t *dev_priv)
{
	drm_mga_primary_buffer_t *primary = &dev_priv->prim;
	u32 head, tail;
	u32 status = 0;
	int i;
	DMA_LOCALS;
	FUNC3("\n");

	/* We need to wait so that we can do an safe flush */
	for (i = 0; i < dev_priv->usec_timeout; i++) {
		status = FUNC5(MGA_STATUS) & MGA_ENGINE_IDLE_MASK;
		if (status == MGA_ENDPRDMASTS)
			break;
		FUNC4(1);
	}

	if (primary->tail == primary->last_flush) {
		FUNC3("   bailing out...\n");
		return;
	}

	tail = primary->tail + dev_priv->primary->offset;

	/* We need to pad the stream between flushes, as the card
	 * actually (partially?) reads the first of these commands.
	 * See page 4-16 in the G400 manual, middle of the page or so.
	 */
	FUNC1(1);

	FUNC2(MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000, MGA_DMAPAD, 0x00000000);

	FUNC0();

	primary->last_flush = primary->tail;

	head = FUNC5(MGA_PRIMADDRESS);

	if (head <= tail)
		primary->space = primary->size - primary->tail;
	else
		primary->space = head - tail;

	FUNC3("   head = 0x%06lx\n", (unsigned long)(head - dev_priv->primary->offset));
	FUNC3("   tail = 0x%06lx\n", (unsigned long)(tail - dev_priv->primary->offset));
	FUNC3("  space = 0x%06x\n", primary->space);

	FUNC7();
	FUNC6(MGA_PRIMEND, tail | dev_priv->dma_access);

	FUNC3("done.\n");
}