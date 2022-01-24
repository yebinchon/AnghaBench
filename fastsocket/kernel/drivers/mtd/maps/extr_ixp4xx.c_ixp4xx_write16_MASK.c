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
struct map_info {scalar_t__ virt; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct map_info *map, map_word d, unsigned long adr)
{
	FUNC0(d.x[0], map->virt + adr);
}