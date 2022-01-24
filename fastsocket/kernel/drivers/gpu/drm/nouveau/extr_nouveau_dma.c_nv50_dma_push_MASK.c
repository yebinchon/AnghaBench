#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct nouveau_vma {scalar_t__ offset; } ;
struct TYPE_5__ {int ib_put; int ib_base; int ib_free; int ib_max; } ;
struct TYPE_4__ {struct nouveau_bo* buffer; } ;
struct nouveau_channel {TYPE_2__ dma; int /*<<< orphan*/  object; int /*<<< orphan*/  cli; TYPE_1__ push; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*,int /*<<< orphan*/ ) ; 
 struct nouveau_vma* FUNC4 (struct nouveau_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_bo*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (scalar_t__) ; 

void
FUNC9(struct nouveau_channel *chan, struct nouveau_bo *bo,
	      int delta, int length)
{
	struct nouveau_bo *pb = chan->push.buffer;
	struct nouveau_vma *vma;
	int ip = (chan->dma.ib_put * 2) + chan->dma.ib_base;
	u64 offset;

	vma = FUNC4(bo, FUNC6(chan->cli)->vm);
	FUNC0(!vma);
	offset = vma->offset + delta;

	FUNC0(chan->dma.ib_free < 1);

	FUNC5(pb, ip++, FUNC2(offset));
	FUNC5(pb, ip++, FUNC8(offset) | length << 8);

	chan->dma.ib_put = (chan->dma.ib_put + 1) & chan->dma.ib_max;

	FUNC1();
	/* Flush writes. */
	FUNC3(pb, 0);

	FUNC7(chan->object, 0x8c, chan->dma.ib_put);
	chan->dma.ib_free--;
}