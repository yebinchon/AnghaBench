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
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcmcia; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* bcsr ; 
 int /*<<< orphan*/  db1x00_pcmcia_ops ; 

int FUNC2(struct device *dev)
{
	int ret = -ENODEV;
	bcsr->pcmcia = 0; /* turn off power, if it's not already off */
	FUNC1(2);
	ret = FUNC0(dev, &db1x00_pcmcia_ops, 0, 2);
	return ret;
}