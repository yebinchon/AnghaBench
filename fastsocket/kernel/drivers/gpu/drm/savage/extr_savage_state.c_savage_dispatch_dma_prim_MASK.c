#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct drm_buf {int total; unsigned int bus_address; } ;
struct TYPE_9__ {unsigned int vbaddr; } ;
struct TYPE_10__ {TYPE_2__ common; } ;
struct TYPE_11__ {unsigned int dma_type; int /*<<< orphan*/  chipset; scalar_t__ waiting; TYPE_3__ state; } ;
typedef  TYPE_4__ drm_savage_private_t ;
struct TYPE_8__ {unsigned int prim; unsigned int skip; unsigned int count; unsigned int start; } ;
struct TYPE_12__ {TYPE_1__ prim; } ;
typedef  TYPE_5__ drm_savage_cmd_header_t ;

/* Variables and functions */
 unsigned int BCI_CMD_DRAW_CONT ; 
 unsigned int BCI_CMD_WAIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  BCI_LOCALS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int EINVAL ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
#define  SAVAGE_PRIM_TRIFAN 131 
#define  SAVAGE_PRIM_TRILIST 130 
#define  SAVAGE_PRIM_TRILIST_201 129 
#define  SAVAGE_PRIM_TRISTRIP 128 
 unsigned int SAVAGE_SKIP_ALL_S4 ; 
 int /*<<< orphan*/  SAVAGE_VERTBUFADDR ; 

__attribute__((used)) static int FUNC8(drm_savage_private_t * dev_priv,
				    const drm_savage_cmd_header_t * cmd_header,
				    const struct drm_buf * dmabuf)
{
	unsigned char reorder = 0;
	unsigned int prim = cmd_header->prim.prim;
	unsigned int skip = cmd_header->prim.skip;
	unsigned int n = cmd_header->prim.count;
	unsigned int start = cmd_header->prim.start;
	unsigned int i;
	BCI_LOCALS;

	if (!dmabuf) {
		FUNC6("called without dma buffers!\n");
		return -EINVAL;
	}

	if (!n)
		return 0;

	switch (prim) {
	case SAVAGE_PRIM_TRILIST_201:
		reorder = 1;
		prim = SAVAGE_PRIM_TRILIST;
	case SAVAGE_PRIM_TRILIST:
		if (n % 3 != 0) {
			FUNC6("wrong number of vertices %u in TRILIST\n",
				  n);
			return -EINVAL;
		}
		break;
	case SAVAGE_PRIM_TRISTRIP:
	case SAVAGE_PRIM_TRIFAN:
		if (n < 3) {
			FUNC6
			    ("wrong number of vertices %u in TRIFAN/STRIP\n",
			     n);
			return -EINVAL;
		}
		break;
	default:
		FUNC6("invalid primitive type %u\n", prim);
		return -EINVAL;
	}

	if (FUNC7(dev_priv->chipset)) {
		if (skip != 0) {
			FUNC6("invalid skip flags 0x%04x for DMA\n", skip);
			return -EINVAL;
		}
	} else {
		unsigned int size = 10 - (skip & 1) - (skip >> 1 & 1) -
		    (skip >> 2 & 1) - (skip >> 3 & 1) - (skip >> 4 & 1) -
		    (skip >> 5 & 1) - (skip >> 6 & 1) - (skip >> 7 & 1);
		if (skip > SAVAGE_SKIP_ALL_S4 || size != 8) {
			FUNC6("invalid skip flags 0x%04x for DMA\n", skip);
			return -EINVAL;
		}
		if (reorder) {
			FUNC6("TRILIST_201 used on Savage4 hardware\n");
			return -EINVAL;
		}
	}

	if (start + n > dmabuf->total / 32) {
		FUNC6("vertex indices (%u-%u) out of range (0-%u)\n",
			  start, start + n - 1, dmabuf->total / 32);
		return -EINVAL;
	}

	/* Vertex DMA doesn't work with command DMA at the same time,
	 * so we use BCI_... to submit commands here. Flush buffered
	 * faked DMA first. */
	FUNC5();

	if (dmabuf->bus_address != dev_priv->state.common.vbaddr) {
		FUNC4(2);
		FUNC2(SAVAGE_VERTBUFADDR, 1);
		FUNC3(dmabuf->bus_address | dev_priv->dma_type);
		dev_priv->state.common.vbaddr = dmabuf->bus_address;
	}
	if (FUNC7(dev_priv->chipset) && dev_priv->waiting) {
		/* Workaround for what looks like a hardware bug. If a
		 * WAIT_3D_IDLE was emitted some time before the
		 * indexed drawing command then the engine will lock
		 * up. There are two known workarounds:
		 * WAIT_IDLE_EMPTY or emit at least 63 NOPs. */
		FUNC4(63);
		for (i = 0; i < 63; ++i)
			FUNC3(BCI_CMD_WAIT);
		dev_priv->waiting = 0;
	}

	prim <<= 25;
	while (n != 0) {
		/* Can emit up to 255 indices (85 triangles) at once. */
		unsigned int count = n > 255 ? 255 : n;
		if (reorder) {
			/* Need to reorder indices for correct flat
			 * shading while preserving the clock sense
			 * for correct culling. Only on Savage3D. */
			int reorder[3] = { -1, -1, -1 };
			reorder[start % 3] = 2;

			FUNC4((count + 1 + 1) / 2);
			FUNC0(count, prim, start + 2);

			for (i = start + 1; i + 1 < start + count; i += 2)
				FUNC3((i + reorder[i % 3]) |
					  ((i + 1 +
					    reorder[(i + 1) % 3]) << 16));
			if (i < start + count)
				FUNC3(i + reorder[i % 3]);
		} else if (FUNC7(dev_priv->chipset)) {
			FUNC4((count + 1 + 1) / 2);
			FUNC0(count, prim, start);

			for (i = start + 1; i + 1 < start + count; i += 2)
				FUNC3(i | ((i + 1) << 16));
			if (i < start + count)
				FUNC3(i);
		} else {
			FUNC4((count + 2 + 1) / 2);
			FUNC1(count, prim, skip);

			for (i = start; i + 1 < start + count; i += 2)
				FUNC3(i | ((i + 1) << 16));
			if (i < start + count)
				FUNC3(i);
		}

		start += count;
		n -= count;

		prim |= BCI_CMD_DRAW_CONT;
	}

	return 0;
}