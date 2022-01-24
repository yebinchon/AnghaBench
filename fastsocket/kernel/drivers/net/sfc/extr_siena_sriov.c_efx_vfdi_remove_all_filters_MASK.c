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
struct efx_vf {int rx_filtering; TYPE_1__* efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  peer_work; } ;

/* Variables and functions */
 int VFDI_RC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct efx_vf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfdi_workqueue ; 

__attribute__((used)) static int FUNC2(struct efx_vf *vf)
{
	vf->rx_filtering = false;
	FUNC0(vf);
	FUNC1(vfdi_workqueue, &vf->efx->peer_work);

	return VFDI_RC_SUCCESS;
}