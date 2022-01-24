#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timespec {unsigned int tv_sec; unsigned int tv_nsec; } ;
struct pps_event_time {struct timespec ts_real; } ;
struct TYPE_2__ {int* addr; } ;
struct efx_ptp_data {TYPE_1__ start; } ;
struct efx_nic {struct efx_ptp_data* ptp_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FR_CZ_MC_TREG_SMEM ; 
 unsigned int MC_NANOSECOND_BITS ; 
 scalar_t__ MC_SMEM_P0_PTP_TIME_OFST ; 
 int /*<<< orphan*/  SYNCHRONISATION_GRANULARITY_NS ; 
 int /*<<< orphan*/  SYNCHRONISE_PERIOD_NS ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pps_event_time*) ; 
 int /*<<< orphan*/  FUNC4 (struct timespec*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct timespec*,struct timespec*) ; 

__attribute__((used)) static void FUNC6(struct efx_nic *efx,
			       struct pps_event_time *last_time)
{
	struct pps_event_time now;
	struct timespec limit;
	struct efx_ptp_data *ptp = efx->ptp_data;
	struct timespec start;
	int *mc_running = ptp->start.addr;

	FUNC3(&now);
	start = now.ts_real;
	limit = now.ts_real;
	FUNC4(&limit, SYNCHRONISE_PERIOD_NS);

	/* Write host time for specified period or until MC is done */
	while ((FUNC5(&now.ts_real, &limit) < 0) &&
	       FUNC0(*mc_running)) {
		struct timespec update_time;
		unsigned int host_time;

		/* Don't update continuously to avoid saturating the PCIe bus */
		update_time = now.ts_real;
		FUNC4(&update_time, SYNCHRONISATION_GRANULARITY_NS);
		do {
			FUNC3(&now);
		} while ((FUNC5(&now.ts_real, &update_time) < 0) &&
			 FUNC0(*mc_running));

		/* Synchronise NIC with single word of time only */
		host_time = (now.ts_real.tv_sec << MC_NANOSECOND_BITS |
			     now.ts_real.tv_nsec);
		/* Update host time in NIC memory */
		FUNC1(efx, FUNC2(host_time),
			    FR_CZ_MC_TREG_SMEM + MC_SMEM_P0_PTP_TIME_OFST);
	}
	*last_time = now;
}