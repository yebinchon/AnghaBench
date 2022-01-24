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
typedef  int /*<<< orphan*/  u16 ;
struct map_info {int /*<<< orphan*/  map_priv_2; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned long,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct map_info *map, u16 d, unsigned long adr)
{
	caddr_t win_base = (caddr_t)map->map_priv_2;

	if(FUNC1(map))
		return;

	FUNC0(3, "adr = 0x%08lx (%p)  data = 0x%04x", adr, win_base + adr, d);
	FUNC2(d, win_base + adr);
}