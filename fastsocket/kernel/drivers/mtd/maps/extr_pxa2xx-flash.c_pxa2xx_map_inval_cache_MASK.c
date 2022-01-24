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
struct map_info {int /*<<< orphan*/  cached; int /*<<< orphan*/  phys; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct map_info *map, unsigned long from,
				      ssize_t len)
{
	FUNC0(map->phys, map->cached, from, len);
}