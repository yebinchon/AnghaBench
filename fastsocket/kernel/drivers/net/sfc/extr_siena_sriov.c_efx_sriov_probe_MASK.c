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
struct efx_nic {unsigned int vf_count; int /*<<< orphan*/ ** extra_channel_type; int /*<<< orphan*/  vi_scale; } ;

/* Variables and functions */
 size_t EFX_EXTRA_CHANNEL_IOV ; 
 int /*<<< orphan*/  efx_sriov_channel_type ; 
 scalar_t__ FUNC0 (struct efx_nic*,int,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int max_vfs ; 

void FUNC1(struct efx_nic *efx)
{
	unsigned count;

	if (!max_vfs)
		return;

	if (FUNC0(efx, false, &efx->vi_scale, &count))
		return;
	if (count > 0 && count > max_vfs)
		count = max_vfs;

	/* efx_nic_dimension_resources() will reduce vf_count as appopriate */
	efx->vf_count = count;

	efx->extra_channel_type[EFX_EXTRA_CHANNEL_IOV] = &efx_sriov_channel_type;
}