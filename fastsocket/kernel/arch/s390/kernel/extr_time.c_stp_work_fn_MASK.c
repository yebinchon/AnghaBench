#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct stp_sstpi {int dummy; } ;
struct clock_sync_data {int /*<<< orphan*/  cpus; } ;
typedef  int /*<<< orphan*/  stp_sync ;
struct TYPE_3__ {scalar_t__ c; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  STP_OP_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct clock_sync_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct clock_sync_data*,int /*<<< orphan*/ *) ; 
 TYPE_1__ stp_info ; 
 int /*<<< orphan*/  stp_online ; 
 int /*<<< orphan*/  stp_page ; 
 int /*<<< orphan*/  stp_sync_clock ; 
 int /*<<< orphan*/  stp_timer ; 
 int /*<<< orphan*/  stp_work_mutex ; 

__attribute__((used)) static void FUNC13(struct work_struct *work)
{
	struct clock_sync_data stp_sync;
	int rc;

	/* prevent multiple execution. */
	FUNC8(&stp_work_mutex);

	if (!stp_online) {
		FUNC2(stp_page, STP_OP_CTRL, 0x0000);
		FUNC4(&stp_timer);
		goto out_unlock;
	}

	rc = FUNC2(stp_page, STP_OP_CTRL, 0xb0e0);
	if (rc)
		goto out_unlock;

	rc = FUNC3(stp_page, &stp_info, sizeof(struct stp_sstpi));
	if (rc || stp_info.c == 0)
		goto out_unlock;

	/* Skip synchronization if the clock is already in sync. */
	if (FUNC1())
		goto out_unlock;

	FUNC6(&stp_sync, 0, sizeof(stp_sync));
	FUNC5();
	FUNC0(&stp_sync.cpus, FUNC10() - 1);
	FUNC12(stp_sync_clock, &stp_sync, &cpu_online_map);
	FUNC11();

	if (!FUNC1())
		/*
		 * There is a usable clock but the synchonization failed.
		 * Retry after a second.
		 */
		FUNC7(&stp_timer, jiffies + HZ);

out_unlock:
	FUNC9(&stp_work_mutex);
}