#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nouveau_fb_tile {int zcomp; TYPE_2__* tag; } ;
struct TYPE_3__ {int parts; } ;
struct nouveau_fb {int /*<<< orphan*/  tags; TYPE_1__ ram; } ;
struct TYPE_4__ {int offset; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,TYPE_2__**) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(struct nouveau_fb *pfb, int i, u32 size, u32 flags,
		  struct nouveau_fb_tile *tile)
{
	u32 tiles = FUNC0(size, 0x40);
	u32 tags  = FUNC2(tiles / pfb->ram.parts, 0x40);
	if (!FUNC1(&pfb->tags, 1, tags, tags, 1, &tile->tag)) {
		if (!(flags & 2)) tile->zcomp = 0x00000000; /* Z16 */
		else              tile->zcomp = 0x04000000; /* Z24S8 */
		tile->zcomp |= tile->tag->offset;
		tile->zcomp |= 0x80000000; /* enable */
#ifdef __BIG_ENDIAN
		tile->zcomp |= 0x08000000;
#endif
	}
}