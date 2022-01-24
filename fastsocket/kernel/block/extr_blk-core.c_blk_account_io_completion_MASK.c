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
struct request {int /*<<< orphan*/  rq_disk; } ;
struct hd_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct hd_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct hd_struct*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct request*) ; 
 int /*<<< orphan*/ * sectors ; 

__attribute__((used)) static void FUNC7(struct request *req, unsigned int bytes)
{
	if (FUNC0(req)) {
		const int rw = FUNC6(req);
		struct hd_struct *part;
		int cpu;

		cpu = FUNC4();
		part = FUNC2(req->rq_disk, FUNC1(req));
		FUNC3(cpu, part, sectors[rw], bytes >> 9);
		FUNC5();
	}
}