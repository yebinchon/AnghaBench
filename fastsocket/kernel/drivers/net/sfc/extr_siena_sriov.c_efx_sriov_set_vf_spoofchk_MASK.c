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
struct efx_vf {scalar_t__ txq_count; int /*<<< orphan*/  txq_lock; int /*<<< orphan*/  tx_filter_mode; } ;
struct efx_nic {int vf_init_count; struct efx_vf* vf; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  VF_TX_FILTER_OFF ; 
 int /*<<< orphan*/  VF_TX_FILTER_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *net_dev, int vf_i,
			      bool spoofchk)
{
	struct efx_nic *efx = FUNC2(net_dev);
	struct efx_vf *vf;
	int rc;

	if (vf_i >= efx->vf_init_count)
		return -EINVAL;
	vf = efx->vf + vf_i;

	FUNC0(&vf->txq_lock);
	if (vf->txq_count == 0) {
		vf->tx_filter_mode =
			spoofchk ? VF_TX_FILTER_ON : VF_TX_FILTER_OFF;
		rc = 0;
	} else {
		/* This cannot be changed while TX queues are running */
		rc = -EBUSY;
	}
	FUNC1(&vf->txq_lock);
	return rc;
}