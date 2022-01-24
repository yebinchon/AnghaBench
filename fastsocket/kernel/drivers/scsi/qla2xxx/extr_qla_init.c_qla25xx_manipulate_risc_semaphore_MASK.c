#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ulong ;
typedef  int uint32_t ;
typedef  scalar_t__ uint ;
struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int RISC_SEMAPHORE ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_CLR ; 
 int RISC_SEMAPHORE_FORCE ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_FORCE_CLR ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_FORCE_SET ; 
 int /*<<< orphan*/  RISC_SEMAPHORE_SET ; 
 scalar_t__ TIMEOUT_SEMAPHORE ; 
 scalar_t__ TIMEOUT_SEMAPHORE_FORCE ; 
 scalar_t__ TIMEOUT_TOTAL_ELAPSED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t wd32 = 0;
	uint delta_msec = 100;
	uint elapsed_msec = 0;
	uint timeout_msec;
	ulong n;

	if (!FUNC1(ha) && !FUNC0(ha))
		return;

attempt:
	timeout_msec = TIMEOUT_SEMAPHORE;
	n = timeout_msec / delta_msec;
	while (n--) {
		FUNC4(vha, RISC_SEMAPHORE_SET);
		FUNC3(vha, &wd32);
		if (wd32 & RISC_SEMAPHORE)
			break;
		FUNC2(delta_msec);
		elapsed_msec += delta_msec;
		if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
			goto force;
	}

	if (!(wd32 & RISC_SEMAPHORE))
		goto force;

	if (!(wd32 & RISC_SEMAPHORE_FORCE))
		goto acquired;

	FUNC4(vha, RISC_SEMAPHORE_CLR);
	timeout_msec = TIMEOUT_SEMAPHORE_FORCE;
	n = timeout_msec / delta_msec;
	while (n--) {
		FUNC3(vha, &wd32);
		if (!(wd32 & RISC_SEMAPHORE_FORCE))
			break;
		FUNC2(delta_msec);
		elapsed_msec += delta_msec;
		if (elapsed_msec > TIMEOUT_TOTAL_ELAPSED)
			goto force;
	}

	if (wd32 & RISC_SEMAPHORE_FORCE)
		FUNC4(vha, RISC_SEMAPHORE_FORCE_CLR);

	goto attempt;

force:
	FUNC4(vha, RISC_SEMAPHORE_FORCE_SET);

acquired:
	return;
}