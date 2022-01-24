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
typedef  int u8 ;
struct TYPE_3__ {int extra_base; scalar_t__ channel; } ;
typedef  TYPE_1__ ide_hwif_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static void FUNC2(ide_hwif_t *hwif)
{
	unsigned long clock_reg = hwif->extra_base + 0x01;
	u8 clock = FUNC0(clock_reg);

	FUNC1(clock | (hwif->channel ? 0x08 : 0x02), clock_reg);
}