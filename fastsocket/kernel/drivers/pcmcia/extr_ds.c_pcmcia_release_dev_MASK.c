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
struct pcmcia_device {TYPE_1__* function_config; struct pcmcia_device* devname; int /*<<< orphan*/  socket; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcmcia_release_function ; 
 struct pcmcia_device* FUNC4 (struct device*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct pcmcia_device *p_dev = FUNC4(dev);
	FUNC0(1, dev, "releasing device\n");
	FUNC3(p_dev->socket);
	FUNC1(p_dev->devname);
	FUNC2(&p_dev->function_config->ref, pcmcia_release_function);
	FUNC1(p_dev);
}