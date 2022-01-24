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
struct TYPE_4__ {int /*<<< orphan*/  seq_print; } ;
struct TYPE_3__ {int layer2; } ;
struct qeth_card {struct qeth_card* ip_tbd_list; int /*<<< orphan*/  read; TYPE_2__ qeth_service_level; TYPE_1__ options; int /*<<< orphan*/  write; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct qeth_card**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qeth_core_sl_print ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static struct qeth_card *FUNC7(void)
{
	struct qeth_card *card;

	FUNC1(SETUP, 2, "alloccrd");
	card = FUNC3(sizeof(struct qeth_card), GFP_DMA|GFP_KERNEL);
	if (!card)
		goto out;
	FUNC0(SETUP, 2, &card, sizeof(void *));
	card->ip_tbd_list = FUNC3(sizeof(struct list_head), GFP_KERNEL);
	if (!card->ip_tbd_list) {
		FUNC1(SETUP, 0, "iptbdnom");
		goto out_card;
	}
	if (FUNC5(&card->read))
		goto out_ip;
	if (FUNC5(&card->write))
		goto out_channel;
	card->options.layer2 = -1;
	card->qeth_service_level.seq_print = qeth_core_sl_print;
	FUNC6(&card->qeth_service_level);
	return card;

out_channel:
	FUNC4(&card->read);
out_ip:
	FUNC2(card->ip_tbd_list);
out_card:
	FUNC2(card);
out:
	return NULL;
}