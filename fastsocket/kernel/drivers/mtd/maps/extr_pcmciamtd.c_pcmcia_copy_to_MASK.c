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
struct map_info {int /*<<< orphan*/  map_priv_2; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,void const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct map_info *map, unsigned long to, const void *from, ssize_t len)
{
	caddr_t win_base = (caddr_t)map->map_priv_2;

	if(FUNC1(map))
		return;

	FUNC0(3, "to = %lu from = %p len = %u", to, from, len);
	FUNC2(win_base + to, from, len);
}