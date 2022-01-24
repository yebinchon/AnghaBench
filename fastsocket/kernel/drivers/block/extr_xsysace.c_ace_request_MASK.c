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
struct request_queue {int dummy; } ;
struct request {TYPE_1__* rq_disk; } ;
struct ace_device {int /*<<< orphan*/  fsm_tasklet; } ;
struct TYPE_2__ {struct ace_device* private_data; } ;

/* Variables and functions */
 struct request* FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct request_queue * q)
{
	struct request *req;
	struct ace_device *ace;

	req = FUNC0(q);

	if (req) {
		ace = req->rq_disk->private_data;
		FUNC1(&ace->fsm_tasklet);
	}
}