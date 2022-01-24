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
struct unit_directory {int /*<<< orphan*/  device; } ;
struct eth1394_priv {int /*<<< orphan*/  ip_node_list; } ;
struct eth1394_node_ref {int /*<<< orphan*/  list; struct unit_directory* ud; } ;
struct TYPE_2__ {scalar_t__ sz; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct eth1394_node_info {int /*<<< orphan*/  fifo; TYPE_1__ pdg; } ;
struct eth1394_host_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR1212_INVALID_ADDR_SPACE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct eth1394_node_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct eth1394_node_ref*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct eth1394_priv* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct eth1394_host_info *hi,
			    struct unit_directory *ud)
{
	struct eth1394_priv *priv;
	struct eth1394_node_ref *new_node;
	struct eth1394_node_info *node_info;

	new_node = FUNC3(sizeof(*new_node), GFP_KERNEL);
	if (!new_node)
		return -ENOMEM;

	node_info = FUNC3(sizeof(*node_info), GFP_KERNEL);
	if (!node_info) {
		FUNC2(new_node);
		return -ENOMEM;
	}

	FUNC6(&node_info->pdg.lock);
	FUNC0(&node_info->pdg.list);
	node_info->pdg.sz = 0;
	node_info->fifo = CSR1212_INVALID_ADDR_SPACE;

	FUNC1(&ud->device, node_info);
	new_node->ud = ud;

	priv = FUNC5(hi->dev);
	FUNC4(&new_node->list, &priv->ip_node_list);
	return 0;
}