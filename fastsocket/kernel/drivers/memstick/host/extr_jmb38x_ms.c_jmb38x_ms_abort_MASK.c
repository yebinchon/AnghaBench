#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {int /*<<< orphan*/  lock; TYPE_3__* req; TYPE_2__* chip; } ;
struct TYPE_6__ {int /*<<< orphan*/  error; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct memstick_host*,int /*<<< orphan*/ ) ; 
 struct jmb38x_ms_host* FUNC2 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct memstick_host *msh = (struct memstick_host *)data;
	struct jmb38x_ms_host *host = FUNC2(msh);
	unsigned long flags;

	FUNC0(&host->chip->pdev->dev, "abort\n");
	FUNC3(&host->lock, flags);
	if (host->req) {
		host->req->error = -ETIME;
		FUNC1(msh, 0);
	}
	FUNC4(&host->lock, flags);
}