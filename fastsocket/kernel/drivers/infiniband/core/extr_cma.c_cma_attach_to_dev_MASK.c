#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  transport; } ;
struct TYPE_10__ {TYPE_3__ dev_addr; } ;
struct TYPE_9__ {TYPE_5__ addr; } ;
struct TYPE_6__ {TYPE_4__ route; TYPE_2__* device; } ;
struct rdma_id_private {int /*<<< orphan*/  list; TYPE_1__ id; struct cma_device* cma_dev; } ;
struct cma_device {int /*<<< orphan*/  id_list; TYPE_2__* device; int /*<<< orphan*/  refcount; } ;
struct TYPE_7__ {int /*<<< orphan*/  node_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rdma_id_private *id_priv,
			      struct cma_device *cma_dev)
{
	FUNC0(&cma_dev->refcount);
	id_priv->cma_dev = cma_dev;
	id_priv->id.device = cma_dev->device;
	id_priv->id.route.addr.dev_addr.transport =
		FUNC2(cma_dev->device->node_type);
	FUNC1(&id_priv->list, &cma_dev->id_list);
}