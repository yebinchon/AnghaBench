#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_7__ {int /*<<< orphan*/  ndev; } ;
typedef  TYPE_2__ islpci_private ;
typedef  enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_8__ {int size; int flags; int /*<<< orphan*/  oid; } ;
struct TYPE_6__ {int operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int OID_FLAG_TYPE ; 
 int OID_NUM_LAST ; 
 int PIMFOR_OP_ERROR ; 
 int /*<<< orphan*/  PIMFOR_OP_SET ; 
 scalar_t__ PRV_STATE_READY ; 
 TYPE_5__* isl_oid ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct islpci_mgmtframe*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,struct islpci_mgmtframe**) ; 
 int /*<<< orphan*/  FUNC4 (int,void*) ; 
 int /*<<< orphan*/  FUNC5 (int,void*) ; 

int
FUNC6(islpci_private *priv, enum oid_num_t n, void *data, int extra_len)
{
	int ret = 0;
	struct islpci_mgmtframe *response;
	int response_op = PIMFOR_OP_ERROR;
	int dlen;
	u32 oid;

	FUNC0(OID_NUM_LAST <= n);

	dlen = isl_oid[n].size;
	oid = isl_oid[n].oid;

	FUNC4(isl_oid[n].flags & OID_FLAG_TYPE, data);

	if (FUNC1(priv) >= PRV_STATE_READY) {
		ret = FUNC3(priv->ndev, PIMFOR_OP_SET, oid,
					     data, dlen + extra_len, &response);
		if (!ret) {
			response_op = response->header->operation;
			FUNC2(response);
		}
		if (ret || response_op == PIMFOR_OP_ERROR)
			ret = -EIO;
	} else
		ret = -EIO;

	/* re-set given data to what it was */
	if (data)
		FUNC5(isl_oid[n].flags & OID_FLAG_TYPE, data);

	return ret;
}