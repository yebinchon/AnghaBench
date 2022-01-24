#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct TYPE_7__ {int /*<<< orphan*/  num_entries; } ;
struct bfi_enet_set_pause_req {TYPE_3__ mh; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_pause; } ;
struct bna_enet {int /*<<< orphan*/  msgq_cmd; TYPE_2__* bna; TYPE_1__ pause_config; struct bfi_enet_set_pause_req pause_req; } ;
struct TYPE_6__ {int /*<<< orphan*/  msgq; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_ENET_H2I_SET_PAUSE_REQ ; 
 int /*<<< orphan*/  BFI_MC_ENET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct bna_enet *enet)
{
	struct bfi_enet_set_pause_req *pause_req = &enet->pause_req;

	FUNC2(pause_req->mh, BFI_MC_ENET,
		BFI_ENET_H2I_SET_PAUSE_REQ, 0, 0);
	pause_req->mh.num_entries = FUNC4(
	FUNC3(sizeof(struct bfi_enet_set_pause_req)));
	pause_req->tx_pause = enet->pause_config.tx_pause;
	pause_req->rx_pause = enet->pause_config.rx_pause;

	FUNC1(&enet->msgq_cmd, NULL, NULL,
		sizeof(struct bfi_enet_set_pause_req), &pause_req->mh);
	FUNC0(&enet->bna->msgq, &enet->msgq_cmd);
}