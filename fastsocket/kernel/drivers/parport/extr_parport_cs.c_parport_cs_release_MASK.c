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
struct pcmcia_device {TYPE_1__* priv; } ;
struct parport {int dummy; } ;
struct TYPE_2__ {scalar_t__ ndev; struct parport* port; } ;
typedef  TYPE_1__ parport_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	parport_info_t *info = link->priv;

	FUNC0(0, "parport_release(0x%p)\n", link);

	if (info->ndev) {
		struct parport *p = info->port;
		FUNC1(p);
	}
	info->ndev = 0;

	FUNC2(link);
}