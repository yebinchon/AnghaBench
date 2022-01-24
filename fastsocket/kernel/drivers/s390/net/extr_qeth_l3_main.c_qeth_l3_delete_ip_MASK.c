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
struct TYPE_5__ {char addr; } ;
struct TYPE_4__ {char addr; } ;
struct TYPE_6__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct qeth_ipaddr {scalar_t__ proto; TYPE_3__ u; } ;
struct qeth_card {int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC2 (struct qeth_card*,struct qeth_ipaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct qeth_card *card, struct qeth_ipaddr *addr)
{
	unsigned long flags;
	int rc = 0;

	FUNC1(TRACE, 4, "delip");

	if (addr->proto == QETH_PROT_IPV4)
		FUNC0(TRACE, 4, &addr->u.a4.addr, 4);
	else {
		FUNC0(TRACE, 4, &addr->u.a6.addr, 8);
		FUNC0(TRACE, 4, ((char *)&addr->u.a6.addr) + 8, 8);
	}
	FUNC3(&card->ip_lock, flags);
	rc = FUNC2(card, addr, 0);
	FUNC4(&card->ip_lock, flags);
	return rc;
}