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
struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int /*<<< orphan*/  lock; TYPE_2__* chip; int /*<<< orphan*/  req; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct memstick_host*) ; 
 int FUNC2 (struct memstick_host*,int /*<<< orphan*/ *) ; 
 struct jmb38x_ms_host* FUNC3 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct memstick_host *msh = (struct memstick_host *)data;
	struct jmb38x_ms_host *host = FUNC3(msh);
	unsigned long flags;
	int rc;

	FUNC4(&host->lock, flags);
	if (!host->req) {
		do {
			rc = FUNC2(msh, &host->req);
			FUNC0(&host->chip->pdev->dev, "tasklet req %d\n", rc);
		} while (!rc && FUNC1(msh));
	}
	FUNC5(&host->lock, flags);
}