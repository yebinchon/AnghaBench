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
struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {int /*<<< orphan*/  iface_lock; int /*<<< orphan*/  seqno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFX_REV_SIENA_A0 ; 
 struct efx_mcdi_iface* FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_mcdi_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct efx_nic *efx, unsigned cmd, const u8 *inbuf,
			size_t inlen)
{
	struct efx_mcdi_iface *mcdi = FUNC1(efx);

	FUNC0(FUNC4(efx) < EFX_REV_SIENA_A0);

	FUNC2(mcdi);

	/* Serialise with efx_mcdi_ev_cpl() and efx_mcdi_ev_death() */
	FUNC5(&mcdi->iface_lock);
	++mcdi->seqno;
	FUNC6(&mcdi->iface_lock);

	FUNC3(efx, cmd, inbuf, inlen);
}