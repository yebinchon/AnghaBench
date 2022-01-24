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
struct nic {int /*<<< orphan*/  netdev; TYPE_2__* csr; int /*<<< orphan*/  cuc_cmd; struct cb* cb_to_clean; } ;
struct firmware {int dummy; } ;
struct cb {int status; } ;
struct TYPE_3__ {int /*<<< orphan*/  stat_ack; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ FUNC0 (struct firmware const*) ; 
 int FUNC1 (struct firmware const*) ; 
 int /*<<< orphan*/  cb_complete ; 
 int /*<<< orphan*/  cb_ok ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cuc_start ; 
 int FUNC3 (struct nic*,void*,int /*<<< orphan*/ ) ; 
 struct firmware* FUNC4 (struct nic*) ; 
 int /*<<< orphan*/  e100_setup_ucode ; 
 int /*<<< orphan*/  FUNC5 (struct nic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static inline int FUNC10(struct nic *nic)
{
	const struct firmware *fw;
	int err = 0, counter = 50;
	struct cb *cb = nic->cb_to_clean;

	fw = FUNC4(nic);
	/* If it's NULL, then no ucode is required */
	if (!fw || FUNC0(fw))
		return FUNC1(fw);

	if ((err = FUNC3(nic, (void *)fw, e100_setup_ucode)))
		FUNC8(nic, probe, nic->netdev,
			  "ucode cmd failed with error %d\n", err);

	/* must restart cuc */
	nic->cuc_cmd = cuc_start;

	/* wait for completion */
	FUNC5(nic);
	FUNC9(10);

	/* wait for possibly (ouch) 500ms */
	while (!(cb->status & FUNC2(cb_complete))) {
		FUNC7(10);
		if (!--counter) break;
	}

	/* ack any interrupts, something could have been set */
	FUNC6(~0, &nic->csr->scb.stat_ack);

	/* if the command failed, or is not OK, notify and return */
	if (!counter || !(cb->status & FUNC2(cb_ok))) {
		FUNC8(nic, probe, nic->netdev, "ucode load failed\n");
		err = -EPERM;
	}

	return err;
}