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
struct TYPE_4__ {TYPE_1__ route4; } ;
struct qeth_card {TYPE_2__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_ROUTER ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct qeth_card *card)
{
	int rc;

	FUNC2(TRACE, 3, "setrtg4");

	FUNC3(card, &card->options.route4.type,
				  QETH_PROT_IPV4);

	rc = FUNC4(card, card->options.route4.type,
				  QETH_PROT_IPV4);
	if (rc) {
		card->options.route4.type = NO_ROUTER;
		FUNC1(2, "Error (0x%04x) while setting routing type"
			" on %s. Type set to 'no router'.\n", rc,
			FUNC0(card));
	}
	return rc;
}