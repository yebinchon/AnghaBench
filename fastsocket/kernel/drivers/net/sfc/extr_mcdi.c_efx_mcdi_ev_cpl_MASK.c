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
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {unsigned int seqno; unsigned int resprc; unsigned int resplen; int /*<<< orphan*/  iface_lock; scalar_t__ credits; } ;

/* Variables and functions */
 unsigned int SEQ_MASK ; 
 struct efx_mcdi_iface* FUNC0 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct efx_nic *efx, unsigned int seqno,
			    unsigned int datalen, unsigned int errno)
{
	struct efx_mcdi_iface *mcdi = FUNC0(efx);
	bool wake = false;

	FUNC3(&mcdi->iface_lock);

	if ((seqno ^ mcdi->seqno) & SEQ_MASK) {
		if (mcdi->credits)
			/* The request has been cancelled */
			--mcdi->credits;
		else
			FUNC2(efx, hw, efx->net_dev,
				  "MC response mismatch tx seq 0x%x rx "
				  "seq 0x%x\n", seqno, mcdi->seqno);
	} else {
		mcdi->resprc = errno;
		mcdi->resplen = datalen;

		wake = true;
	}

	FUNC4(&mcdi->iface_lock);

	if (wake)
		FUNC1(mcdi);
}