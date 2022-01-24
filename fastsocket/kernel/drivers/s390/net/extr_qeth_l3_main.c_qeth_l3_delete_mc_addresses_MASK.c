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
struct qeth_ipaddr {int /*<<< orphan*/  type; } ;
struct qeth_card {int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_DEL_ALL_MC ; 
 int /*<<< orphan*/  QETH_PROT_IPV4 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_card*,struct qeth_ipaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct qeth_card *card)
{
	struct qeth_ipaddr *iptodo;
	unsigned long flags;

	FUNC0(TRACE, 4, "delmc");
	iptodo = FUNC3(QETH_PROT_IPV4);
	if (!iptodo) {
		FUNC0(TRACE, 2, "dmcnomem");
		return;
	}
	iptodo->type = QETH_IP_TYPE_DEL_ALL_MC;
	FUNC4(&card->ip_lock, flags);
	if (!FUNC1(card, iptodo, 0))
		FUNC2(iptodo);
	FUNC5(&card->ip_lock, flags);
}