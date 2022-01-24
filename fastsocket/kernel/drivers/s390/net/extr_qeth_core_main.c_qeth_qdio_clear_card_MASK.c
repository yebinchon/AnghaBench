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
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
struct qeth_card {int /*<<< orphan*/  state; TYPE_1__ qdio; TYPE_2__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  CARD_STATE_DOWN ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_CLEAR ; 
 int /*<<< orphan*/  QDIO_FLAG_CLEANUP_USING_HALT ; 
 int /*<<< orphan*/  QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  QETH_QDIO_ALLOCATED ; 
#define  QETH_QDIO_CLEANING 129 
#define  QETH_QDIO_ESTABLISHED 128 
 int /*<<< orphan*/  TRACE ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qeth_card*,int) ; 

int FUNC7(struct qeth_card *card, int use_halt)
{
	int rc = 0;

	FUNC1(TRACE, 3, "qdioclr");
	switch (FUNC3(&card->qdio.state, QETH_QDIO_ESTABLISHED,
		QETH_QDIO_CLEANING)) {
	case QETH_QDIO_ESTABLISHED:
		if (card->info.type == QETH_CARD_TYPE_IQD)
			rc = FUNC5(FUNC0(card),
				QDIO_FLAG_CLEANUP_USING_HALT);
		else
			rc = FUNC5(FUNC0(card),
				QDIO_FLAG_CLEANUP_USING_CLEAR);
		if (rc)
			FUNC2(TRACE, 3, "1err%d", rc);
		FUNC4(&card->qdio.state, QETH_QDIO_ALLOCATED);
		break;
	case QETH_QDIO_CLEANING:
		return rc;
	default:
		break;
	}
	rc = FUNC6(card, use_halt);
	if (rc)
		FUNC2(TRACE, 3, "2err%d", rc);
	card->state = CARD_STATE_DOWN;
	return rc;
}