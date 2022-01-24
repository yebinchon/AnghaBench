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
struct pcmcia_device {scalar_t__ priv; scalar_t__ dev_node; } ;
struct local_info_t {int stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{

	FUNC0(0, "das08_pcmcia_detach(0x%p)\n", link);

	if (link->dev_node) {
		((struct local_info_t *)link->priv)->stop = 1;
		FUNC1(link);
	}

	/* This points to the parent struct local_info_t struct */
	if (link->priv)
		FUNC2(link->priv);

}