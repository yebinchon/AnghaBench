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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*,struct request*) ; 

void FUNC8(struct request_queue *q, struct request *rq)
{
	FUNC2(rq);
	FUNC1(rq);
	FUNC7(q, rq);

	if (FUNC5(rq))
		FUNC3(q, rq);

	FUNC0(FUNC4(rq));

	FUNC6(q, rq);
}