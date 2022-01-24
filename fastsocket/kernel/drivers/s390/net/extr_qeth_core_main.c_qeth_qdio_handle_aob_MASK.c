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
struct qeth_qdio_out_buffer {int /*<<< orphan*/  q; int /*<<< orphan*/ * aob; int /*<<< orphan*/  state; } ;
struct qeth_card {int dummy; } ;
struct qaob {scalar_t__ aorc; scalar_t__ user1; } ;
typedef  enum iucv_tx_notify { ____Placeholder_iucv_tx_notify } iucv_tx_notify ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_HANDLED_DELAYED ; 
 int /*<<< orphan*/  QETH_QDIO_BUF_IN_CQ ; 
 scalar_t__ QETH_QDIO_BUF_PENDING ; 
 scalar_t__ QETH_QDIO_BUF_PRIMED ; 
 int /*<<< orphan*/  TRACE ; 
 int TX_NOTIFY_DELAYED_OK ; 
 int TX_NOTIFY_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct qaob*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct qeth_qdio_out_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct qeth_qdio_out_buffer*,int) ; 

__attribute__((used)) static inline void FUNC10(struct qeth_card *card,
		unsigned long phys_aob_addr) {
	struct qaob *aob;
	struct qeth_qdio_out_buffer *buffer;
	enum iucv_tx_notify notification;

	aob = (struct qaob *) FUNC5(phys_aob_addr);
	buffer = (struct qeth_qdio_out_buffer *) aob->user1;

	FUNC0(buffer == NULL);

	if (FUNC2(&buffer->state, QETH_QDIO_BUF_PRIMED,
			   QETH_QDIO_BUF_IN_CQ) == QETH_QDIO_BUF_PRIMED) {
		notification = TX_NOTIFY_OK;
	} else {
		FUNC0(FUNC3(&buffer->state) != QETH_QDIO_BUF_PENDING);
		FUNC4(&buffer->state, QETH_QDIO_BUF_IN_CQ);
		notification = TX_NOTIFY_DELAYED_OK;
	}

	if (aob->aorc != 0)  {
		FUNC1(TRACE, 2, "aorc%02X", aob->aorc);
		notification = FUNC8(aob->aorc, 1);
	}
	FUNC9(buffer->q, buffer, notification);

	buffer->aob = NULL;
	FUNC7(buffer->q, buffer,
				 QETH_QDIO_BUF_HANDLED_DELAYED);

	/* from here on: do not touch buffer anymore */
	FUNC6(aob);
}