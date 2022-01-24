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
struct aper_size_info_8 {int /*<<< orphan*/  size_value; } ;
struct TYPE_4__ {int /*<<< orphan*/  previous_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  lp_desc; } ;

/* Variables and functions */
 struct aper_size_info_8* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ I460_IO_PAGE_SHIFT ; 
 scalar_t__ PAGE_SHIFT ; 
 TYPE_2__* agp_bridge ; 
 TYPE_1__ i460 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (void)
{
	struct aper_size_info_8 *previous_size;

	previous_size = FUNC0(agp_bridge->previous_size);
	FUNC1(previous_size->size_value);

	if (I460_IO_PAGE_SHIFT > PAGE_SHIFT)
		FUNC2(i460.lp_desc);
}