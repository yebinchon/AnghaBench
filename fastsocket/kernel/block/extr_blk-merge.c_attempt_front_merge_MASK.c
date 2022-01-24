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
 int FUNC0 (struct request_queue*,struct request*,struct request*) ; 
 struct request* FUNC1 (struct request_queue*,struct request*) ; 

int FUNC2(struct request_queue *q, struct request *rq)
{
	struct request *prev = FUNC1(q, rq);

	if (prev)
		return FUNC0(q, prev, rq);

	return 0;
}