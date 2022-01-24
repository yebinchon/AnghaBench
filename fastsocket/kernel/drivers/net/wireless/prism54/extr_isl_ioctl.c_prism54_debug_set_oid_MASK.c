#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int /*<<< orphan*/  length; } ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_6__ {int /*<<< orphan*/  priv_oid; int /*<<< orphan*/  ndev; } ;
typedef  TYPE_2__ islpci_private ;
struct TYPE_5__ {int operation; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EIO ; 
 int PIMFOR_OP_ERROR ; 
 int /*<<< orphan*/  PIMFOR_OP_SET ; 
 scalar_t__ PRV_STATE_INIT ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct islpci_mgmtframe*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct islpci_mgmtframe**) ; 
 TYPE_2__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC5(struct net_device *ndev, struct iw_request_info *info,
		      struct iw_point *data, char *extra)
{
	islpci_private *priv = FUNC3(ndev);
	struct islpci_mgmtframe *response;
	int ret = 0, response_op = PIMFOR_OP_ERROR;

	FUNC4("%s: set_oid 0x%08X\tlen: %d\n", ndev->name, priv->priv_oid,
	       data->length);

	if (FUNC0(priv) >= PRV_STATE_INIT) {
		ret =
		    FUNC2(priv->ndev, PIMFOR_OP_SET,
					   priv->priv_oid, extra, data->length,
					   &response);
		FUNC4("%s: ret: %i\n", ndev->name, ret);
		if (ret || !response
		    || response->header->operation == PIMFOR_OP_ERROR) {
			if (response) {
				FUNC1(response);
			}
			FUNC4("%s: EIO\n", ndev->name);
			ret = -EIO;
		}
		if (!ret) {
			response_op = response->header->operation;
			FUNC4("%s: response_op: %i\n", ndev->name,
			       response_op);
			FUNC1(response);
		}
	}

	return (ret ? ret : -EINPROGRESS);
}