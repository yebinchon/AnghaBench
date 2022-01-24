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
struct TYPE_2__ {int regions; int /*<<< orphan*/ * region; int /*<<< orphan*/  (* fini ) (struct nouveau_fb*,int,int /*<<< orphan*/ *) ;} ;
struct nouveau_fb {int /*<<< orphan*/  base; int /*<<< orphan*/  vram; int /*<<< orphan*/  tags; TYPE_1__ tile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fb*,int,int /*<<< orphan*/ *) ; 

void
FUNC3(struct nouveau_fb *pfb)
{
	int i;

	for (i = 0; i < pfb->tile.regions; i++)
		pfb->tile.fini(pfb, i, &pfb->tile.region[i]);
	FUNC0(&pfb->tags);
	FUNC0(&pfb->vram);

	FUNC1(&pfb->base);
}