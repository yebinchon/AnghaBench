#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct qeth_qdio_out_buffer {TYPE_3__* buffer; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct qeth_card {TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__* element; } ;
struct TYPE_5__ {int sflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,...) ; 
 int QETH_SEND_ERROR_LINK_FAILURE ; 
 int QETH_SEND_ERROR_NONE ; 
 int QETH_SEND_ERROR_RETRY ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,TYPE_3__*,unsigned int,char*) ; 

__attribute__((used)) static int FUNC4(struct qeth_card *card,
		struct qeth_qdio_out_buffer *buffer, unsigned int qdio_err)
{
	int sbalf15 = buffer->buffer->element[15].sflags;

	FUNC1(TRACE, 6, "hdsnderr");
	if (card->info.type == QETH_CARD_TYPE_IQD) {
		if (sbalf15 == 0) {
			qdio_err = 0;
		} else {
			qdio_err = 1;
		}
	}
	FUNC3(card, buffer->buffer, qdio_err, "qouterr");

	if (!qdio_err)
		return QETH_SEND_ERROR_NONE;

	if ((sbalf15 >= 15) && (sbalf15 <= 31))
		return QETH_SEND_ERROR_RETRY;

	FUNC1(TRACE, 1, "lnkfail");
	FUNC2(TRACE, 1, "%s", FUNC0(card));
	FUNC2(TRACE, 1, "%04x %02x",
		       (u16)qdio_err, (u8)sbalf15);
	return QETH_SEND_ERROR_LINK_FAILURE;
}