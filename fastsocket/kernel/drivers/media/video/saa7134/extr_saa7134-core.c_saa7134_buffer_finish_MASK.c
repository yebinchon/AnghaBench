#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct saa7134_dmaqueue {TYPE_2__* curr; } ;
struct saa7134_dev {int /*<<< orphan*/  slock; } ;
struct TYPE_3__ {unsigned int state; int /*<<< orphan*/  done; int /*<<< orphan*/  ts; } ;
struct TYPE_4__ {TYPE_1__ vb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct saa7134_dev *dev,
			   struct saa7134_dmaqueue *q,
			   unsigned int state)
{
	FUNC0(&dev->slock);
	FUNC2("buffer_finish %p\n",q->curr);

	/* finish current buffer */
	q->curr->vb.state = state;
	FUNC1(&q->curr->vb.ts);
	FUNC3(&q->curr->vb.done);
	q->curr = NULL;
}