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
struct port_info {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int nports; } ;
struct adapter {int /*<<< orphan*/  sge; TYPE_1__ params; struct port_info* port; } ;

/* Variables and functions */
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int /*<<< orphan*/  FUNC0 (struct port_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC5(struct adapter *adapter, int port_id, int link_stat,
			int speed, int duplex, int pause)
{
	struct port_info *p = &adapter->port[port_id];

	if (link_stat != FUNC2(p->dev)) {
		if (link_stat)
			FUNC3(p->dev);
		else
			FUNC1(p->dev);
		FUNC0(p);

		/* multi-ports: inform toe */
		if ((speed > 0) && (adapter->params.nports > 1)) {
			unsigned int sched_speed = 10;
			switch (speed) {
			case SPEED_1000:
				sched_speed = 1000;
				break;
			case SPEED_100:
				sched_speed = 100;
				break;
			case SPEED_10:
				sched_speed = 10;
				break;
			}
			FUNC4(adapter->sge, port_id, 0, sched_speed);
		}
	}
}