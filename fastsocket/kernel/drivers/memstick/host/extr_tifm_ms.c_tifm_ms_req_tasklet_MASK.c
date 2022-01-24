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
struct tifm_ms {TYPE_1__* req; scalar_t__ eject; struct tifm_dev* dev; } ;
struct tifm_dev {int /*<<< orphan*/  lock; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int FUNC0 (struct memstick_host*,TYPE_1__**) ; 
 struct tifm_ms* FUNC1 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct tifm_ms*) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct memstick_host *msh = (struct memstick_host *)data;
	struct tifm_ms *host = FUNC1(msh);
	struct tifm_dev *sock = host->dev;
	unsigned long flags;
	int rc;

	FUNC2(&sock->lock, flags);
	if (!host->req) {
		if (host->eject) {
			do {
				rc = FUNC0(msh, &host->req);
				if (!rc)
					host->req->error = -ETIME;
			} while (!rc);
			FUNC3(&sock->lock, flags);
			return;
		}

		do {
			rc = FUNC0(msh, &host->req);
		} while (!rc && FUNC4(host));
	}
	FUNC3(&sock->lock, flags);
}