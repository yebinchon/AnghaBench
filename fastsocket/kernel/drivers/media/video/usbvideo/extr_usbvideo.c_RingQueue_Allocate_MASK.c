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
struct RingQueue {int length; int /*<<< orphan*/ * queue; scalar_t__ wi; scalar_t__ ri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct RingQueue *rq, int rqLen)
{
	/* Make sure the requested size is a power of 2 and
	   round up if necessary. This allows index wrapping
	   using masks rather than modulo */

	int i = 1;
	FUNC0(rq != NULL);
	FUNC0(rqLen > 0);

	while(rqLen >> i)
		i++;
	if(rqLen != 1 << (i-1))
		rqLen = 1 << i;

	rq->length = rqLen;
	rq->ri = rq->wi = 0;
	rq->queue = FUNC1(rq->length);
	FUNC0(rq->queue != NULL);
}