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
struct qeth_cmd_buffer {scalar_t__ data; } ;
struct qeth_card {scalar_t__ state; int /*<<< orphan*/  write; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 int ENODEV ; 
 scalar_t__ IPA_PDU_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,int) ; 
 int FUNC2 (struct qeth_card*,struct qeth_cmd_buffer*,int) ; 
 struct qeth_cmd_buffer* FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct net_device *dev, void *data, int data_len)
{
	struct qeth_cmd_buffer *iob;
	struct qeth_card *card;
	int rc;

	FUNC0(TRACE, 2, "osnsdmc");
	if (!dev)
		return -ENODEV;
	card = dev->ml_priv;
	if (!card)
		return -ENODEV;
	if ((card->state != CARD_STATE_UP) &&
	    (card->state != CARD_STATE_SOFTSETUP))
		return -ENODEV;
	iob = FUNC3(&card->write);
	FUNC1(iob->data+IPA_PDU_HEADER_SIZE, data, data_len);
	rc = FUNC2(card, iob, data_len);
	return rc;
}