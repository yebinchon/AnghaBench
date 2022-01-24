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
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int /*<<< orphan*/  wrapped; scalar_t__ space; int /*<<< orphan*/  last_wrap; int /*<<< orphan*/  tail; scalar_t__ size; scalar_t__ last_flush; } ;
struct TYPE_6__ {scalar_t__ dma_access; TYPE_1__* primary; TYPE_3__ prim; } ;
typedef  TYPE_2__ drm_mga_private_t ;
typedef  TYPE_3__ drm_mga_primary_buffer_t ;
struct TYPE_5__ {scalar_t__ offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_LOCALS ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  MGA_DMAPAD ; 
 int /*<<< orphan*/  MGA_PRIMADDRESS ; 
 int /*<<< orphan*/  MGA_PRIMEND ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(drm_mga_private_t *dev_priv)
{
	drm_mga_primary_buffer_t *primary = &dev_priv->prim;
	u32 head, tail;
	DMA_LOCALS;
	FUNC3("\n");

	FUNC1();

	FUNC2(MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000,
		  MGA_DMAPAD, 0x00000000, MGA_DMAPAD, 0x00000000);

	FUNC0();

	tail = primary->tail + dev_priv->primary->offset;

	primary->tail = 0;
	primary->last_flush = 0;
	primary->last_wrap++;

	head = FUNC4(MGA_PRIMADDRESS);

	if (head == dev_priv->primary->offset)
		primary->space = primary->size;
	else
		primary->space = head - dev_priv->primary->offset;

	FUNC3("   head = 0x%06lx\n", (unsigned long)(head - dev_priv->primary->offset));
	FUNC3("   tail = 0x%06x\n", primary->tail);
	FUNC3("   wrap = %d\n", primary->last_wrap);
	FUNC3("  space = 0x%06x\n", primary->space);

	FUNC6();
	FUNC5(MGA_PRIMEND, tail | dev_priv->dma_access);

	FUNC7(0, &primary->wrapped);
	FUNC3("done.\n");
}