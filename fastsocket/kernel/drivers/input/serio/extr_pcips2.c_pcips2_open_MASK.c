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
struct serio {struct pcips2_data* port_data; } ;
struct pcips2_data {int /*<<< orphan*/  base; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int PS2_CTRL_ENABLE ; 
 int PS2_CTRL_RXIRQ ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcips2_data*) ; 
 int /*<<< orphan*/  pcips2_interrupt ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pcips2_data*) ; 

__attribute__((used)) static int FUNC3(struct serio *io)
{
	struct pcips2_data *ps2if = io->port_data;
	int ret, val = 0;

	FUNC0(PS2_CTRL_ENABLE, ps2if->base);
	FUNC1(ps2if);

	ret = FUNC2(ps2if->dev->irq, pcips2_interrupt, IRQF_SHARED,
			  "pcips2", ps2if);
	if (ret == 0)
		val = PS2_CTRL_ENABLE | PS2_CTRL_RXIRQ;

	FUNC0(val, ps2if->base);

	return ret;
}