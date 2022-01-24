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
struct TYPE_4__ {struct bsg_job* sg_list; } ;
struct TYPE_3__ {struct bsg_job* sg_list; } ;
struct bsg_job {TYPE_2__ reply_payload; TYPE_1__ request_payload; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bsg_job *job)
{
	FUNC1(job->dev);	/* release reference for the request */

	FUNC0(job->request_payload.sg_list);
	FUNC0(job->reply_payload.sg_list);
	FUNC0(job);
}