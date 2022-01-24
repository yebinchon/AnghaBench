#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bcm3510_state {int /*<<< orphan*/  frontend; } ;
struct TYPE_6__ {scalar_t__ CTL; } ;
struct TYPE_7__ {scalar_t__ RUN; } ;
struct TYPE_8__ {TYPE_1__ TSTCTL_2e; TYPE_2__ APSTAT1_a2; } ;
typedef  TYPE_3__ bcm3510_register_value ;

/* Variables and functions */
 int FUNC0 (struct bcm3510_state*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bcm3510_state*,int,TYPE_3__*) ; 
 int FUNC3 (struct bcm3510_state*) ; 
 int FUNC4 (struct bcm3510_state*,int,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct bcm3510_state *st)
{
	int ret;
	bcm3510_register_value v;

	/* read Acquisation Processor status register and check it is not in RUN mode */
	if ((ret = FUNC2(st,0xa2,&v)) < 0)
		return ret;
	if (v.APSTAT1_a2.RUN) {
		FUNC5("AP is already running - firmware already loaded.\n");
		return 0;
	}

	FUNC5("reset?\n");
	if ((ret = FUNC3(st)) < 0)
		return ret;

	FUNC5("tristate?\n");
	/* tri-state */
	v.TSTCTL_2e.CTL = 0;
	if ((ret = FUNC4(st,0x2e,v)) < 0)
		return ret;

	FUNC5("firmware?\n");
	if ((ret = FUNC1(&st->frontend)) < 0 ||
		(ret = FUNC0(st)) < 0)
		return ret;

	/* anything left here to Let the acquisition processor begin execution at program counter 0000 ??? */

	return 0;
}