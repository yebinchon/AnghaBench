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
typedef  int /*<<< orphan*/  u8 ;
struct bna_rxf {int /*<<< orphan*/  mcast_handle_q; TYPE_1__* rx; } ;
struct bna_mcam_handle {int handle; scalar_t__ refcnt; int /*<<< orphan*/  qe; } ;
struct bna_mac {struct bna_mcam_handle* handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  mcam_mod; } ;
struct TYPE_3__ {TYPE_2__* bna; } ;

/* Variables and functions */
 struct bna_mcam_handle* FUNC0 (int /*<<< orphan*/ *) ; 
 struct bna_mcam_handle* FUNC1 (struct bna_rxf*,int) ; 
 struct bna_mac* FUNC2 (struct bna_rxf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bna_rxf *rxf, u8 *mac_addr, int handle)
{
	struct bna_mac *mcmac;
	struct bna_mcam_handle *mchandle;

	mcmac = FUNC2(rxf, mac_addr);
	mchandle = FUNC1(rxf, handle);
	if (mchandle == NULL) {
		mchandle = FUNC0(&rxf->rx->bna->mcam_mod);
		mchandle->handle = handle;
		mchandle->refcnt = 0;
		FUNC3(&mchandle->qe, &rxf->mcast_handle_q);
	}
	mchandle->refcnt++;
	mcmac->handle = mchandle;
}