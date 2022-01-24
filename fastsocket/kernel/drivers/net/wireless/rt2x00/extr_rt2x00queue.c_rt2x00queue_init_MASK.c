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
struct rt2x00_dev {int dummy; } ;
struct data_queue {int qid; int aifs; int cw_min; int cw_max; scalar_t__ txop; struct rt2x00_dev* rt2x00dev; int /*<<< orphan*/  index_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  status_lock; } ;
typedef  enum data_queue_qid { ____Placeholder_data_queue_qid } data_queue_qid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct rt2x00_dev *rt2x00dev,
			     struct data_queue *queue, enum data_queue_qid qid)
{
	FUNC0(&queue->status_lock);
	FUNC1(&queue->tx_lock);
	FUNC1(&queue->index_lock);

	queue->rt2x00dev = rt2x00dev;
	queue->qid = qid;
	queue->txop = 0;
	queue->aifs = 2;
	queue->cw_min = 5;
	queue->cw_max = 10;
}