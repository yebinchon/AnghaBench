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
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct pcmcia_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 struct pcmcia_device* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void * _data)
{
	struct pcmcia_device *p_dev = FUNC2(dev);
	if (!p_dev->dev.driver) {
		FUNC0(1, dev, "update device information\n");
		FUNC1(p_dev);
	}

	return 0;
}