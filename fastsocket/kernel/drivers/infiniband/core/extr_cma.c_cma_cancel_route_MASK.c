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
struct TYPE_2__ {int /*<<< orphan*/  port_num; int /*<<< orphan*/  device; } ;
struct rdma_id_private {int /*<<< orphan*/  query; int /*<<< orphan*/  query_id; TYPE_1__ id; } ;

/* Variables and functions */
#define  IB_LINK_LAYER_INFINIBAND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rdma_id_private *id_priv)
{
	switch (FUNC1(id_priv->id.device, id_priv->id.port_num)) {
	case IB_LINK_LAYER_INFINIBAND:
		if (id_priv->query)
			FUNC0(id_priv->query_id, id_priv->query);
		break;
	default:
		break;
	}
}