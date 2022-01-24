#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int dummy; } ;
struct enic {unsigned int rq_count; int /*<<< orphan*/ * napi; int /*<<< orphan*/  vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 int FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 struct device* FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 int FUNC8 (struct enic*) ; 
 int /*<<< orphan*/  FUNC9 (struct enic*) ; 
 int /*<<< orphan*/  enic_poll ; 
 int /*<<< orphan*/  enic_poll_msix ; 
 int FUNC10 (struct enic*) ; 
 int FUNC11 (struct enic*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct enic *enic)
{
	struct device *dev = FUNC6(enic);
	struct net_device *netdev = enic->netdev;
	unsigned int i;
	int err;

	/* Get interrupt coalesce timer info */
	err = FUNC4(enic);
	if (err) {
		FUNC1(dev, "Using default conversion factor for "
			"interrupt coalesce timer\n");
		FUNC14(enic->vdev);
	}

	/* Get vNIC configuration
	 */

	err = FUNC8(enic);
	if (err) {
		FUNC0(dev, "Get vNIC configuration failed, aborting\n");
		return err;
	}

	/* Get available resource counts
	 */

	FUNC7(enic);

	/* Set interrupt mode based on resource counts and system
	 * capabilities
	 */

	err = FUNC10(enic);
	if (err) {
		FUNC0(dev, "Failed to set intr mode based on resource "
			"counts and system capabilities, aborting\n");
		return err;
	}

	/* Allocate and configure vNIC resources
	 */

	err = FUNC2(enic);
	if (err) {
		FUNC0(dev, "Failed to alloc vNIC resources, aborting\n");
		goto err_out_free_vnic_resources;
	}

	FUNC9(enic);

	err = FUNC11(enic);
	if (err) {
		FUNC0(dev, "Failed to config nic, aborting\n");
		goto err_out_free_vnic_resources;
	}

	switch (FUNC13(enic->vdev)) {
	default:
		FUNC12(netdev, &enic->napi[0], enic_poll, 64);
		break;
	case VNIC_DEV_INTR_MODE_MSIX:
		for (i = 0; i < enic->rq_count; i++)
			FUNC12(netdev, &enic->napi[i],
				enic_poll_msix, 64);
		break;
	}

	return 0;

err_out_free_vnic_resources:
	FUNC3(enic);
	FUNC5(enic);

	return err;
}