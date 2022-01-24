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
struct request {int /*<<< orphan*/  rq_disk; int /*<<< orphan*/  q; struct request* next_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct request*,int,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct request *rq, int error,
				    unsigned int nr_bytes,
				    unsigned int bidi_bytes)
{
	if (FUNC3(rq, error, nr_bytes))
		return true;

	/* Bidi request must be completed as a whole */
	if (FUNC4(FUNC1(rq)) &&
	    FUNC3(rq->next_rq, error, bidi_bytes))
		return true;

	if (FUNC2(rq->q))
		FUNC0(rq->rq_disk);

	return false;
}