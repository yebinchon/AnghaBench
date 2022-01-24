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
struct pcmcia_device {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct pcmcia_device *link)
{
	FUNC0(0, "SYM53C500_detach(0x%p)\n", link);

	FUNC1(link);

	FUNC2(link->priv);
	link->priv = NULL;
}