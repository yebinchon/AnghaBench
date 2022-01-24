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
struct TYPE_5__ {scalar_t__ pfxlen; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {scalar_t__ mask; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {TYPE_2__ a6; TYPE_1__ a4; } ;
struct qeth_ipaddr {int /*<<< orphan*/  type; TYPE_3__ u; } ;
struct qeth_card {int dummy; } ;
typedef  enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_IP_TYPE_VIPA ; 
 int QETH_PROT_IPV4 ; 
 int QETH_PROT_IPV6 ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*) ; 

void FUNC6(struct qeth_card *card, enum qeth_prot_versions proto,
	      const u8 *addr)
{
	struct qeth_ipaddr *ipaddr;

	ipaddr = FUNC4(proto);
	if (ipaddr) {
		if (proto == QETH_PROT_IPV4) {
			FUNC0(TRACE, 2, "delvipa4");
			FUNC2(&ipaddr->u.a4.addr, addr, 4);
			ipaddr->u.a4.mask = 0;
		} else if (proto == QETH_PROT_IPV6) {
			FUNC0(TRACE, 2, "delvipa6");
			FUNC2(&ipaddr->u.a6.addr, addr, 16);
			ipaddr->u.a6.pfxlen = 0;
		}
		ipaddr->type = QETH_IP_TYPE_VIPA;
	} else
		return;
	if (!FUNC3(card, ipaddr))
		FUNC1(ipaddr);
	FUNC5(card);
}