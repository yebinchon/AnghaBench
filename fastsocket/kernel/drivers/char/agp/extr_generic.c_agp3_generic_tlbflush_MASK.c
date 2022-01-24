#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct agp_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ capndx; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ AGPCTRL ; 
 int AGPCTRL_GTLBEN ; 
 TYPE_1__* agp_bridge ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 

void FUNC2(struct agp_memory *mem)
{
	u32 ctrl;
	FUNC0(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, &ctrl);
	FUNC1(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, ctrl & ~AGPCTRL_GTLBEN);
	FUNC1(agp_bridge->dev, agp_bridge->capndx+AGPCTRL, ctrl);
}