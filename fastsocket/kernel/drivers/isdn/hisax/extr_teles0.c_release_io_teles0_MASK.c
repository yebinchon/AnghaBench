#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  phymem; int /*<<< orphan*/  membase; scalar_t__ cfg_reg; } ;
struct TYPE_4__ {TYPE_1__ teles0; } ;
struct IsdnCardState {TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  TELES_IOMEM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct IsdnCardState *cs)
{
	if (cs->hw.teles0.cfg_reg)
		FUNC2(cs->hw.teles0.cfg_reg, 8);
	FUNC0(cs->hw.teles0.membase);
	FUNC1(cs->hw.teles0.phymem, TELES_IOMEM_SIZE);
}