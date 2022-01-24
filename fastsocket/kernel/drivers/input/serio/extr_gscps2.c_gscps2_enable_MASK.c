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
typedef  int /*<<< orphan*/  u8 ;
struct gscps2port {int /*<<< orphan*/  addr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSC_CTRL_ENBL ; 
 int /*<<< orphan*/  FUNC0 (struct gscps2port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gscps2port *ps2port, int enable)
{
	unsigned long flags;
	u8 data;

	/* now enable/disable the port */
	FUNC3(&ps2port->lock, flags);
	FUNC0(ps2port);
	data = FUNC1(ps2port->addr);
	if (enable)
		data |= GSC_CTRL_ENBL;
	else
		data &= ~GSC_CTRL_ENBL;
	FUNC2(data, ps2port->addr);
	FUNC4(&ps2port->lock, flags);
	FUNC5(ps2port->addr);
	FUNC0(ps2port);
}