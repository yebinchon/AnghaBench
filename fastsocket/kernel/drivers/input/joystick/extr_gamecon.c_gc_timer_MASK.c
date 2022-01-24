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
struct gc {int /*<<< orphan*/  timer; scalar_t__* pads; } ;

/* Variables and functions */
 size_t GC_DDR ; 
 size_t GC_MULTI ; 
 size_t GC_MULTI2 ; 
 size_t GC_N64 ; 
 size_t GC_NES ; 
 size_t GC_PSX ; 
 scalar_t__ GC_REFRESH_TIME ; 
 size_t GC_SNES ; 
 size_t GC_SNESMOUSE ; 
 int /*<<< orphan*/  FUNC0 (struct gc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gc*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gc*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC5(unsigned long private)
{
	struct gc *gc = (void *) private;

/*
 * N64 pads - must be read first, any read confuses them for 200 us
 */

	if (gc->pads[GC_N64])
		FUNC1(gc);

/*
 * NES and SNES pads or mouse
 */

	if (gc->pads[GC_NES] || gc->pads[GC_SNES] || gc->pads[GC_SNESMOUSE])
		FUNC2(gc);

/*
 * Multi and Multi2 joysticks
 */

	if (gc->pads[GC_MULTI] || gc->pads[GC_MULTI2])
		FUNC0(gc);

/*
 * PSX controllers
 */

	if (gc->pads[GC_PSX] || gc->pads[GC_DDR])
		FUNC3(gc);

	FUNC4(&gc->timer, jiffies + GC_REFRESH_TIME);
}