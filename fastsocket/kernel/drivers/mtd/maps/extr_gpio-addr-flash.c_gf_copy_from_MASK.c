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
struct map_info {scalar_t__ virt; } ;
struct async_state {unsigned long win_size; } ;
typedef  unsigned long ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct async_state* FUNC1 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct async_state*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, void *to, unsigned long from, ssize_t len)
{
	struct async_state *state = FUNC1(map);

	FUNC2(state, from);

	/* BUG if operation crosses the win_size */
	FUNC0(!((from + len) % state->win_size <= (from + len)));

	/* operation does not cross the win_size, so one shot it */
	FUNC3(to, map->virt + (from % state->win_size), len);
}