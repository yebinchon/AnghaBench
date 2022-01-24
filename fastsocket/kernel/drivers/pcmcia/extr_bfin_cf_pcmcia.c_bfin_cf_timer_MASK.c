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
struct bfin_cf_socket {unsigned short present; int /*<<< orphan*/  timer; scalar_t__ active; int /*<<< orphan*/  socket; TYPE_1__* pdev; int /*<<< orphan*/  cd_pfx; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ POLL_INTERVAL ; 
 int /*<<< orphan*/  SS_DETECT ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned long _cf)
{
	struct bfin_cf_socket *cf = (void *)_cf;
	unsigned short present = FUNC0(cf->cd_pfx);

	if (present != cf->present) {
		cf->present = present;
		FUNC1(&cf->pdev->dev, ": card %s\n",
			 present ? "present" : "gone");
		FUNC3(&cf->socket, SS_DETECT);
	}

	if (cf->active)
		FUNC2(&cf->timer, jiffies + POLL_INTERVAL);
}