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
struct efx_vf {scalar_t__ evq0_count; scalar_t__ peer_page_count; int /*<<< orphan*/ * peer_page_addrs; int /*<<< orphan*/  buf; } ;
struct efx_nic {unsigned int vf_count; struct efx_vf* vf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct efx_nic*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx)
{
	struct efx_vf *vf;
	unsigned int pos;

	for (pos = 0; pos < efx->vf_count; ++pos) {
		vf = efx->vf + pos;

		FUNC0(efx, &vf->buf);
		FUNC1(vf->peer_page_addrs);
		vf->peer_page_addrs = NULL;
		vf->peer_page_count = 0;

		vf->evq0_count = 0;
	}
}