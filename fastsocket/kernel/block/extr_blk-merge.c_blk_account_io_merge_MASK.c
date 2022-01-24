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
 int /*<<< orphan*/  FUNC3 (struct hd_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct hd_struct*) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct request *req)
{
	if (FUNC0(req)) {
		struct hd_struct *part;
		int cpu;

		cpu = FUNC5();
		part = FUNC2(req->rq_disk, FUNC1(req));

		FUNC4(cpu, part);
		FUNC3(part, FUNC7(req));

		FUNC6();
	}
}