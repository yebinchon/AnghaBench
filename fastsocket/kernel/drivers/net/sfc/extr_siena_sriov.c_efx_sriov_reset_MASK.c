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
struct efx_vf {int dummy; } ;
struct efx_nic {unsigned int vf_init_count; struct efx_vf* vf; } ;
struct efx_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EFX_PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct efx_nic*,struct efx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,struct efx_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_vf*,struct efx_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int) ; 

void FUNC6(struct efx_nic *efx)
{
	unsigned int vf_i;
	struct efx_buffer buf;
	struct efx_vf *vf;

	FUNC0();

	if (efx->vf_init_count == 0)
		return;

	FUNC5(efx, true);
	(void)FUNC3(efx, true, NULL, NULL);

	if (FUNC1(efx, &buf, EFX_PAGE_SIZE))
		return;

	for (vf_i = 0; vf_i < efx->vf_init_count; ++vf_i) {
		vf = efx->vf + vf_i;
		FUNC4(vf, &buf);
	}

	FUNC2(efx, &buf);
}