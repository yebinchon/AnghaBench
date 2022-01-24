#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; scalar_t__ is_multicast_different; } ;
struct TYPE_7__ {int no_in_queues; scalar_t__ no_out_queues; int /*<<< orphan*/  default_out_queue; int /*<<< orphan*/  do_prio_queueing; } ;
struct qeth_card {TYPE_4__* gdev; TYPE_3__ info; TYPE_2__ qdio; } ;
struct TYPE_6__ {scalar_t__ dev_type; scalar_t__ dev_model; } ;
struct TYPE_10__ {TYPE_1__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct qeth_card*) ; 
 int ENOENT ; 
 scalar_t__ QETH_CARD_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_DEFAULT_QUEUE ; 
 size_t QETH_DEV_MODEL_IND ; 
 size_t QETH_DEV_TYPE_IND ; 
 size_t QETH_MULTICAST_IND ; 
 int /*<<< orphan*/  QETH_PRIOQ_DEFAULT ; 
 size_t QETH_QUEUE_NO_IND ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__** known_devices ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card)
{
	int i = 0;

	FUNC1(SETUP, 2, "detcdtyp");

	card->qdio.do_prio_queueing = QETH_PRIOQ_DEFAULT;
	card->qdio.default_out_queue = QETH_DEFAULT_QUEUE;
	while (known_devices[i][QETH_DEV_MODEL_IND]) {
		if ((FUNC0(card)->id.dev_type ==
				known_devices[i][QETH_DEV_TYPE_IND]) &&
		    (FUNC0(card)->id.dev_model ==
				known_devices[i][QETH_DEV_MODEL_IND])) {
			card->info.type = known_devices[i][QETH_DEV_MODEL_IND];
			card->qdio.no_out_queues =
				known_devices[i][QETH_QUEUE_NO_IND];
			card->qdio.no_in_queues = 1;
			card->info.is_multicast_different =
				known_devices[i][QETH_MULTICAST_IND];
			FUNC3(card);
			return 0;
		}
		i++;
	}
	card->info.type = QETH_CARD_TYPE_UNKNOWN;
	FUNC2(&card->gdev->dev, "The adapter hardware is of an "
		"unknown type\n");
	return -ENOENT;
}