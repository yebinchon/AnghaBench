#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPA_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct qeth_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qeth_card*) ; 

__attribute__((used)) static int FUNC5(struct qeth_card *card)
{
	int rc = 0;

	FUNC1(TRACE, 3, "strtipv6");

	if (!FUNC3(card, IPA_IPV6)) {
		FUNC2(&card->gdev->dev,
			"IPv6 not supported on %s\n", FUNC0(card));
		return 0;
	}
#ifdef CONFIG_QETH_IPV6
	rc = qeth_l3_softsetup_ipv6(card);
#endif
	return rc ;
}