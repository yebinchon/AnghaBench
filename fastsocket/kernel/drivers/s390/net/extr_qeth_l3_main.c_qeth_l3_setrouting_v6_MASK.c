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
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct TYPE_4__ {TYPE_1__ route6; } ;
struct qeth_card {TYPE_2__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_IPV6 ; 
 int /*<<< orphan*/  NO_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct qeth_card *card)
{
	int rc = 0;

	FUNC2(TRACE, 3, "setrtg6");
#ifdef CONFIG_QETH_IPV6

	if (!qeth_is_supported(card, IPA_IPV6))
		return 0;
	qeth_l3_correct_routing_type(card, &card->options.route6.type,
				  QETH_PROT_IPV6);

	rc = qeth_l3_send_setrouting(card, card->options.route6.type,
				  QETH_PROT_IPV6);
	if (rc) {
		card->options.route6.type = NO_ROUTER;
		QETH_DBF_MESSAGE(2, "Error (0x%04x) while setting routing type"
			" on %s. Type set to 'no router'.\n", rc,
			QETH_CARD_IFNAME(card));
	}
#endif
	return rc;
}