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
struct serial_info {int dummy; } ;
struct pcmcia_device {struct serial_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct serial_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
	struct serial_info *info = link->priv;

	FUNC0(0, "serial_detach(0x%p)\n", link);

	/*
	 * Ensure any outstanding scheduled tasks are completed.
	 */
	FUNC1();

	/*
	 * Ensure that the ports have been released.
	 */
	FUNC3(link);

	/* free bits */
	FUNC2(info);
}