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
struct TYPE_2__ {int /*<<< orphan*/  tboot_size; int /*<<< orphan*/  tboot_base; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 TYPE_1__* tboot ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 map_base, map_size;

	/* Create identity map for tboot shutdown code. */
	map_base = FUNC0(tboot->tboot_base);
	map_size = FUNC1(tboot->tboot_size);
	if (FUNC2(map_base << PAGE_SHIFT, map_base, map_size))
		FUNC3("tboot: Error mapping tboot pages (mfns) @ 0x%x, 0x%x\n",
		      map_base, map_size);
}