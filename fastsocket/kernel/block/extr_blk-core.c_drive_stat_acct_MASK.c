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
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 struct hd_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * merges ; 
 int /*<<< orphan*/  FUNC3 (struct hd_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct hd_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct hd_struct*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (struct request*) ; 

__attribute__((used)) static void FUNC9(struct request *rq, int new_io)
{
	struct hd_struct *part;
	int rw = FUNC8(rq);
	int cpu;

	if (!FUNC0(rq))
		return;

	cpu = FUNC6();
	part = FUNC2(rq->rq_disk, FUNC1(rq));

	if (!new_io)
		FUNC5(cpu, part, merges[rw]);
	else {
		FUNC4(cpu, part);
		FUNC3(part, rw);
	}

	FUNC7();
}