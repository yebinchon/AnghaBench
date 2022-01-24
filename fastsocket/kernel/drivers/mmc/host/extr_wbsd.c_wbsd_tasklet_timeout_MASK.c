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
struct wbsd_host {int /*<<< orphan*/  lock; int /*<<< orphan*/  finish_tasklet; int /*<<< orphan*/  mrq; } ;
struct mmc_data {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mmc_data* FUNC4 (struct wbsd_host*) ; 

__attribute__((used)) static void FUNC5(unsigned long param)
{
	struct wbsd_host *host = (struct wbsd_host *)param;
	struct mmc_data *data;

	FUNC1(&host->lock);

	if (!host->mrq)
		goto end;

	data = FUNC4(host);
	if (!data)
		goto end;

	FUNC0("Timeout\n");

	data->error = -ETIMEDOUT;

	FUNC3(&host->finish_tasklet);

end:
	FUNC2(&host->lock);
}