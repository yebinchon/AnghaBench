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
struct request {int dummy; } ;
struct cfq_queue {scalar_t__ last_request_pos; int seek_history; } ;
struct cfq_data {int /*<<< orphan*/  queue; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ CFQQ_SECT_THR_NONROT ; 
 scalar_t__ CFQQ_SEEK_THR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 

__attribute__((used)) static void
FUNC3(struct cfq_data *cfqd, struct cfq_queue *cfqq,
		       struct request *rq)
{
	sector_t sdist = 0;
	sector_t n_sec = FUNC2(rq);
	if (cfqq->last_request_pos) {
		if (cfqq->last_request_pos < FUNC1(rq))
			sdist = FUNC1(rq) - cfqq->last_request_pos;
		else
			sdist = cfqq->last_request_pos - FUNC1(rq);
	}

	cfqq->seek_history <<= 1;
	if (FUNC0(cfqd->queue))
		cfqq->seek_history |= (n_sec < CFQQ_SECT_THR_NONROT);
	else
		cfqq->seek_history |= (sdist > CFQQ_SEEK_THR);
}