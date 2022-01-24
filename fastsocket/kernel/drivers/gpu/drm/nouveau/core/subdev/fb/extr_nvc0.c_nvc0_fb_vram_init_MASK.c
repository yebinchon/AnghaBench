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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {int ranks; int size; int /*<<< orphan*/  type; } ;
struct nouveau_fb {int /*<<< orphan*/  vram; TYPE_1__ ram; } ;
struct nouveau_bios {int dummy; } ;

/* Variables and functions */
 struct nouveau_bios* FUNC0 (struct nouveau_fb*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bios*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int const,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_fb*,char*,int,...) ; 
 int FUNC5 (struct nouveau_fb*,int) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_fb *pfb)
{
	struct nouveau_bios *bios = FUNC0(pfb);
	const u32 rsvd_head = ( 256 * 1024) >> 12; /* vga memory */
	const u32 rsvd_tail = (1024 * 1024) >> 12; /* vbios etc */
	u32 parts = FUNC5(pfb, 0x022438);
	u32 pmask = FUNC5(pfb, 0x022554);
	u32 bsize = FUNC5(pfb, 0x10f20c);
	u32 offset, length;
	bool uniform = true;
	int ret, part;

	FUNC4(pfb, "0x100800: 0x%08x\n", FUNC5(pfb, 0x100800));
	FUNC4(pfb, "parts 0x%08x mask 0x%08x\n", parts, pmask);

	pfb->ram.type = FUNC1(bios);
	pfb->ram.ranks = (FUNC5(pfb, 0x10f200) & 0x00000004) ? 2 : 1;

	/* read amount of vram attached to each memory controller */
	for (part = 0; part < parts; part++) {
		if (!(pmask & (1 << part))) {
			u32 psize = FUNC5(pfb, 0x11020c + (part * 0x1000));
			if (psize != bsize) {
				if (psize < bsize)
					bsize = psize;
				uniform = false;
			}

			FUNC4(pfb, "%d: mem_amount 0x%08x\n", part, psize);
			pfb->ram.size += (u64)psize << 20;
		}
	}

	/* if all controllers have the same amount attached, there's no holes */
	if (uniform) {
		offset = rsvd_head;
		length = (pfb->ram.size >> 12) - rsvd_head - rsvd_tail;
		return FUNC3(&pfb->vram, offset, length, 1);
	}

	/* otherwise, address lowest common amount from 0GiB */
	ret = FUNC3(&pfb->vram, rsvd_head, (bsize << 8) * parts, 1);
	if (ret)
		return ret;

	/* and the rest starting from (8GiB + common_size) */
	offset = (0x0200000000ULL >> 12) + (bsize << 8);
	length = (pfb->ram.size >> 12) - (bsize << 8) - rsvd_tail;

	ret = FUNC3(&pfb->vram, offset, length, 0);
	if (ret) {
		FUNC2(&pfb->vram);
		return ret;
	}

	return 0;
}