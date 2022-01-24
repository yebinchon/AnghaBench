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
struct map_info {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ map_word ;

/* Variables and functions */
 unsigned long WINDOW_MASK ; 
 scalar_t__ iomapadr ; 
 int /*<<< orphan*/  FUNC0 (struct map_info*,unsigned long) ; 
 int /*<<< orphan*/  sbc_gxx_spin ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct map_info *map, map_word d, unsigned long adr)
{
	FUNC1(&sbc_gxx_spin);
	FUNC0(map, adr);
	FUNC3(d.x[0], iomapadr + (adr & WINDOW_MASK));
	FUNC2(&sbc_gxx_spin);
}