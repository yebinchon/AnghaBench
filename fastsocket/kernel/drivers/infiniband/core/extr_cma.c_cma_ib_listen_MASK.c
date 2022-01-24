#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct TYPE_3__ {struct ib_cm_id* ib; } ;
struct TYPE_4__ {int /*<<< orphan*/  ps; int /*<<< orphan*/  device; } ;
struct rdma_id_private {TYPE_1__ cm_id; TYPE_2__ id; int /*<<< orphan*/  afonly; } ;
struct ib_cm_id {int dummy; } ;
struct ib_cm_compare_data {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_cm_id*) ; 
 int FUNC1 (struct ib_cm_id*) ; 
 scalar_t__ FUNC2 (struct sockaddr*) ; 
 int /*<<< orphan*/  cma_req_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sockaddr*,struct ib_cm_compare_data*) ; 
 struct sockaddr* FUNC4 (struct rdma_id_private*) ; 
 int FUNC5 (struct ib_cm_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ib_cm_compare_data*) ; 
 struct ib_cm_id* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_id_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_cm_id*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct sockaddr*) ; 

__attribute__((used)) static int FUNC9(struct rdma_id_private *id_priv)
{
	struct ib_cm_compare_data compare_data;
	struct sockaddr *addr;
	struct ib_cm_id	*id;
	__be64 svc_id;
	int ret;

	id = FUNC6(id_priv->id.device, cma_req_handler, id_priv);
	if (FUNC0(id))
		return FUNC1(id);

	id_priv->cm_id.ib = id;

	addr = FUNC4(id_priv);
	svc_id = FUNC8(&id_priv->id, addr);
	if (FUNC2(addr) && !id_priv->afonly)
		ret = FUNC5(id_priv->cm_id.ib, svc_id, 0, NULL);
	else {
		FUNC3(id_priv->id.ps, addr, &compare_data);
		ret = FUNC5(id_priv->cm_id.ib, svc_id, 0, &compare_data);
	}

	if (ret) {
		FUNC7(id_priv->cm_id.ib);
		id_priv->cm_id.ib = NULL;
	}

	return ret;
}