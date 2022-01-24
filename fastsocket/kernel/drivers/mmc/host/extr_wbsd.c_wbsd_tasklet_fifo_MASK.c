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
struct wbsd_host {scalar_t__ num_sg; int /*<<< orphan*/  lock; int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  mrq; } ;
struct mmc_data {int flags; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  WBSD_IDX_FIFOEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct wbsd_host*) ; 
 struct mmc_data* FUNC5 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct wbsd_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(unsigned long param)
{
	struct wbsd_host *host = (struct wbsd_host *)param;
	struct mmc_data *data;

	FUNC0(&host->lock);

	if (!host->mrq)
		goto end;

	data = FUNC5(host);
	if (!data)
		goto end;

	if (data->flags & MMC_DATA_WRITE)
		FUNC4(host);
	else
		FUNC3(host);

	/*
	 * Done?
	 */
	if (host->num_sg == 0) {
		FUNC6(host, WBSD_IDX_FIFOEN, 0);
		FUNC2(&host->finish_tasklet);
	}

end:
	FUNC1(&host->lock);
}