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
struct map_info {scalar_t__ virt; } ;
struct async_state {unsigned long win_size; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 struct async_state* FUNC0 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct async_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static map_word FUNC3(struct map_info *map, unsigned long ofs)
{
	struct async_state *state = FUNC0(map);
	uint16_t word;
	map_word test;

	FUNC1(state, ofs);

	word = FUNC2(map->virt + (ofs % state->win_size));
	test.x[0] = word;
	return test;
}