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
struct request {struct request* next_rq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int FUNC2 (struct request*,int,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct request *rq, int error)
{
	bool pending;
	unsigned int bidi_bytes = 0;

	if (FUNC4(FUNC1(rq)))
		bidi_bytes = FUNC3(rq->next_rq);

	pending = FUNC2(rq, error, FUNC3(rq), bidi_bytes);
	FUNC0(pending);
}