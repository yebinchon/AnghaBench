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
typedef  int u32 ;
struct TYPE_2__ {int size; int /*<<< orphan*/  type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MEM_TYPE_DDR1 ; 
 int /*<<< orphan*/  NV_MEM_TYPE_DDR2 ; 
 int /*<<< orphan*/  NV_MEM_TYPE_GDDR3 ; 
 int FUNC0 (struct nouveau_fb*,int) ; 

int
FUNC1(struct nouveau_fb *pfb)
{
	u32 pfb474 = FUNC0(pfb, 0x100474);
	if (pfb474 & 0x00000004)
		pfb->ram.type = NV_MEM_TYPE_GDDR3;
	if (pfb474 & 0x00000002)
		pfb->ram.type = NV_MEM_TYPE_DDR2;
	if (pfb474 & 0x00000001)
		pfb->ram.type = NV_MEM_TYPE_DDR1;

	pfb->ram.size = FUNC0(pfb, 0x10020c) & 0xff000000;
	return 0;
}