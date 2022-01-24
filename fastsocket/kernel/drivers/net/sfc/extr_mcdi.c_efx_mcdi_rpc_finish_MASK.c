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
typedef  int /*<<< orphan*/  u8 ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {scalar_t__ mode; int resprc; size_t resplen; int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  credits; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFX_REV_SIENA_A0 ; 
 int EINTR ; 
 int EIO ; 
 scalar_t__ MCDI_MODE_POLL ; 
 int /*<<< orphan*/  MCDI_STATUS_SLEEP_MS ; 
 unsigned int MC_CMD_REBOOT ; 
 int /*<<< orphan*/  RESET_TYPE_MC_FAILURE ; 
 struct efx_mcdi_iface* FUNC1 (struct efx_nic*) ; 
 int FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_mcdi_iface*) ; 
 scalar_t__ FUNC7 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int FUNC9 (size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(struct efx_nic *efx, unsigned cmd, size_t inlen,
			u8 *outbuf, size_t outlen, size_t *outlen_actual)
{
	struct efx_mcdi_iface *mcdi = FUNC1(efx);
	int rc;

	FUNC0(FUNC7(efx) < EFX_REV_SIENA_A0);

	if (mcdi->mode == MCDI_MODE_POLL)
		rc = FUNC4(efx);
	else
		rc = FUNC2(efx);

	if (rc != 0) {
		/* Close the race with efx_mcdi_ev_cpl() executing just too late
		 * and completing a request we've just cancelled, by ensuring
		 * that the seqno check therein fails.
		 */
		FUNC13(&mcdi->iface_lock);
		++mcdi->seqno;
		++mcdi->credits;
		FUNC14(&mcdi->iface_lock);

		FUNC12(efx, hw, efx->net_dev,
			  "MC command 0x%x inlen %d mode %d timed out\n",
			  cmd, (int)inlen, mcdi->mode);
	} else {
		size_t resplen;

		/* At the very least we need a memory barrier here to ensure
		 * we pick up changes from efx_mcdi_ev_cpl(). Protect against
		 * a spurious efx_mcdi_ev_cpl() running concurrently by
		 * acquiring the iface_lock. */
		FUNC13(&mcdi->iface_lock);
		rc = -mcdi->resprc;
		resplen = mcdi->resplen;
		FUNC14(&mcdi->iface_lock);

		if (rc == 0) {
			FUNC3(efx, outbuf,
					 FUNC9(outlen, mcdi->resplen + 3) & ~0x3);
			if (outlen_actual != NULL)
				*outlen_actual = resplen;
		} else if (cmd == MC_CMD_REBOOT && rc == -EIO)
			; /* Don't reset if MC_CMD_REBOOT returns EIO */
		else if (rc == -EIO || rc == -EINTR) {
			FUNC12(efx, hw, efx->net_dev, "MC fatal error %d\n",
				  -rc);
			FUNC8(efx, RESET_TYPE_MC_FAILURE);
		} else
			FUNC11(efx, hw, efx->net_dev,
				  "MC command 0x%x inlen %d failed rc=%d\n",
				  cmd, (int)inlen, -rc);

		if (rc == -EIO || rc == -EINTR) {
			FUNC10(MCDI_STATUS_SLEEP_MS);
			FUNC5(efx);
		}
	}

	FUNC6(mcdi);
	return rc;
}