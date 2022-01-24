#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssb_mipscore {int /*<<< orphan*/  nr_serial_ports; int /*<<< orphan*/  serial_ports; TYPE_1__* dev; } ;
struct TYPE_6__ {scalar_t__ dev; } ;
struct TYPE_5__ {scalar_t__ dev; } ;
struct ssb_bus {TYPE_3__ chipco; TYPE_2__ extif; } ;
struct TYPE_4__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ssb_mipscore *mcore)
{
	struct ssb_bus *bus = mcore->dev->bus;

	if (bus->extif.dev)
		mcore->nr_serial_ports = FUNC1(&bus->extif, mcore->serial_ports);
	else if (bus->chipco.dev)
		mcore->nr_serial_ports = FUNC0(&bus->chipco, mcore->serial_ports);
	else
		mcore->nr_serial_ports = 0;
}