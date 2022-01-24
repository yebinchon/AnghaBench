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
struct map_info {scalar_t__ virt; scalar_t__ map_priv_1; } ;
struct async_state {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct async_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct async_state*) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
	struct async_state *state = (struct async_state *)map->map_priv_1;

	FUNC3(state);

	FUNC1(map->virt + to, from, len);
	FUNC0();

	FUNC2(state);
}