#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ipw_tty {int dummy; } ;
struct ipw_network {int dummy; } ;
struct ipw_hardware {int dummy; } ;
struct TYPE_10__ {scalar_t__ minor; int /*<<< orphan*/  major; int /*<<< orphan*/  dev_name; } ;
typedef  TYPE_1__ dev_node_t ;
struct TYPE_12__ {scalar_t__ minor_start; int /*<<< orphan*/  major; } ;
struct TYPE_11__ {int index; int channel_idx; int secondary_channel_idx; int tty_type; int /*<<< orphan*/  ipw_tty_mutex; struct ipw_network* network; struct ipw_hardware* hardware; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_2__* FUNC0 (scalar_t__) ; 
 TYPE_3__* ipw_tty_driver ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_network*,int,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 TYPE_2__** ttys ; 

__attribute__((used)) static int FUNC7(dev_node_t *nodesp, int j,
		    struct ipw_hardware *hardware,
		    struct ipw_network *network, int channel_idx,
		    int secondary_channel_idx, int tty_type)
{
	ttys[j] = FUNC2(sizeof(struct ipw_tty), GFP_KERNEL);
	if (!ttys[j])
		return -ENOMEM;
	ttys[j]->index = j;
	ttys[j]->hardware = hardware;
	ttys[j]->channel_idx = channel_idx;
	ttys[j]->secondary_channel_idx = secondary_channel_idx;
	ttys[j]->network = network;
	ttys[j]->tty_type = tty_type;
	FUNC3(&ttys[j]->ipw_tty_mutex);

	FUNC6(ipw_tty_driver, j, NULL);
	FUNC1(network, channel_idx, ttys[j]);

	if (secondary_channel_idx != -1)
		FUNC1(network,
						 secondary_channel_idx,
						 ttys[j]);
	if (nodesp != NULL) {
		FUNC5(nodesp->dev_name, "ttyIPWp%d", j);
		nodesp->major = ipw_tty_driver->major;
		nodesp->minor = j + ipw_tty_driver->minor_start;
	}
	if (FUNC0(j + ipw_tty_driver->minor_start) == ttys[j])
		FUNC4(ttys[j]);
	return 0;
}