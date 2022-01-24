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
struct queue_entry {int /*<<< orphan*/  entry_idx; } ;
struct data_queue {int qid; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
#define  QID_AC_BE 132 
#define  QID_AC_BK 131 
#define  QID_AC_VI 130 
#define  QID_AC_VO 129 
#define  QID_MGMT 128 
 int /*<<< orphan*/  Q_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct queue_entry* FUNC2 (struct data_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct data_queue *queue)
{
	struct rt2x00_dev *rt2x00dev = queue->rt2x00dev;
	struct queue_entry *entry;

	switch (queue->qid) {
	case QID_AC_VO:
	case QID_AC_VI:
	case QID_AC_BE:
	case QID_AC_BK:
		entry = FUNC2(queue, Q_INDEX);
		FUNC1(rt2x00dev, FUNC0(queue->qid),
					  entry->entry_idx);
		break;
	case QID_MGMT:
		entry = FUNC2(queue, Q_INDEX);
		FUNC1(rt2x00dev, FUNC0(5),
					  entry->entry_idx);
		break;
	default:
		break;
	}
}