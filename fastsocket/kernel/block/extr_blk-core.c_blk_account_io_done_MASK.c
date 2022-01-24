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
struct request {int cmd_flags; unsigned long start_time; int /*<<< orphan*/  rq_disk; } ;
struct hd_struct {int dummy; } ;

/* Variables and functions */
 int REQ_FLUSH_SEQ ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct hd_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ios ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct hd_struct*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int,struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct hd_struct*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct request*) ; 
 int /*<<< orphan*/ * ticks ; 

__attribute__((used)) static void FUNC10(struct request *req)
{
	/*
	 * Account IO completion.  flush_rq isn't accounted as a
	 * normal IO on queueing nor completion.  Accounting the
	 * containing request is enough.
	 */
	if (FUNC0(req) && !(req->cmd_flags & REQ_FLUSH_SEQ)) {
		unsigned long duration = jiffies - req->start_time;
		const int rw = FUNC9(req);
		struct hd_struct *part;
		int cpu;

		cpu = FUNC7();
		part = FUNC2(req->rq_disk, FUNC1(req));

		FUNC6(cpu, part, ios[rw]);
		FUNC5(cpu, part, ticks[rw], duration);
		FUNC4(cpu, part);
		FUNC3(part, rw);

		FUNC8();
	}
}