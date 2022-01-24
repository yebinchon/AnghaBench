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
struct RingQueue {int ri; int wi; int length; scalar_t__ queue; } ;

/* Variables and functions */
 int FUNC0 (struct RingQueue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,scalar_t__,int) ; 

int FUNC3(struct RingQueue *rq, unsigned char *dst, int len)
{
	int rql, toread;

	FUNC1(rq != NULL);
	FUNC1(dst != NULL);

	rql = FUNC0(rq);
	if(!rql)
		return 0;

	/* Clip requested length to available data */
	if(len > rql)
		len = rql;

	toread = len;
	if(rq->ri > rq->wi) {
		/* Read data from tail */
		int read = (toread < (rq->length - rq->ri)) ? toread : rq->length - rq->ri;
		FUNC2(dst, rq->queue + rq->ri, read);
		toread -= read;
		dst += read;
		rq->ri = (rq->ri + read) & (rq->length-1);
	}
	if(toread) {
		/* Read data from head */
		FUNC2(dst, rq->queue + rq->ri, toread);
		rq->ri = (rq->ri + toread) & (rq->length-1);
	}
	return len;
}