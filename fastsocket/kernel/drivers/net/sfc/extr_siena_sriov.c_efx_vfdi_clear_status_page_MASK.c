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
struct efx_vf {int /*<<< orphan*/  status_lock; scalar_t__ status_addr; } ;

/* Variables and functions */
 int VFDI_RC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct efx_vf *vf)
{
	FUNC0(&vf->status_lock);
	vf->status_addr = 0;
	FUNC1(&vf->status_lock);

	return VFDI_RC_SUCCESS;
}