#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct map_info {scalar_t__ virt; scalar_t__ map_priv_1; } ;
struct async_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct async_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct async_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, map_word d1, unsigned long ofs)
{
	struct async_state *state = (struct async_state *)map->map_priv_1;
	uint16_t d;

	d = d1.x[0];

	FUNC2(state);

	FUNC3(d, map->virt + ofs);
	FUNC0();

	FUNC1(state);
}