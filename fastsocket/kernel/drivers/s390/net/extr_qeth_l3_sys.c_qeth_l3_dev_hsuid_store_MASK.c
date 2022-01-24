#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* s6_addr32; char* s6_addr; } ;
struct TYPE_11__ {scalar_t__ pfxlen; TYPE_3__ addr; } ;
struct TYPE_12__ {TYPE_5__ a6; } ;
struct qeth_ipaddr {void* type; TYPE_6__ u; } ;
struct TYPE_10__ {scalar_t__ cq; char* hsuid; scalar_t__ sniffer; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct qeth_card {scalar_t__ state; TYPE_4__ options; TYPE_2__* dev; TYPE_1__ info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ CARD_STATE_DOWN ; 
 scalar_t__ CARD_STATE_RECOVER ; 
 size_t EINVAL ; 
 size_t ENOMEM ; 
 size_t EPERM ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  QETH_CQ_DISABLED ; 
 int /*<<< orphan*/  QETH_CQ_ENABLED ; 
 scalar_t__ QETH_CQ_NOTAVAILABLE ; 
 void* QETH_IP_TYPE_NORMAL ; 
 int /*<<< orphan*/  QETH_PROT_IPV6 ; 
 struct qeth_card* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_card*,struct qeth_ipaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct qeth_card*,struct qeth_ipaddr*) ; 
 struct qeth_ipaddr* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qeth_card*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 char* FUNC11 (char**,char*) ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct qeth_card *card = FUNC1(dev);
	struct qeth_ipaddr *addr;
	char *tmp;
	int i;

	if (!card)
		return -EINVAL;

	if (card->info.type != QETH_CARD_TYPE_IQD)
		return -EPERM;
	if (card->state != CARD_STATE_DOWN &&
	    card->state != CARD_STATE_RECOVER)
		return -EPERM;
	if (card->options.sniffer)
		return -EPERM;
	if (card->options.cq == QETH_CQ_NOTAVAILABLE)
		return -EPERM;

	tmp = FUNC11((char **)&buf, "\n");
	if (FUNC9(tmp) > 8)
		return -EINVAL;

	if (card->options.hsuid[0]) {
		/* delete old ip address */
		addr = FUNC7(QETH_PROT_IPV6);
		if (addr != NULL) {
			addr->u.a6.addr.s6_addr32[0] = 0xfe800000;
			addr->u.a6.addr.s6_addr32[1] = 0x00000000;
			for (i = 8; i < 16; i++)
				addr->u.a6.addr.s6_addr[i] =
					card->options.hsuid[i - 8];
			addr->u.a6.pfxlen = 0;
			addr->type = QETH_IP_TYPE_NORMAL;
		} else
			return -ENOMEM;
		if (!FUNC6(card, addr))
			FUNC2(addr);
		FUNC8(card);
	}

	if (FUNC9(tmp) == 0) {
		/* delete ip address only */
		card->options.hsuid[0] = '\0';
		if (card->dev)
			FUNC3(card->dev->perm_addr, card->options.hsuid, 9);
		FUNC4(card, QETH_CQ_DISABLED);
		return count;
	}

	if (FUNC4(card, QETH_CQ_ENABLED))
		return -EPERM;

	for (i = 0; i < 8; i++)
		card->options.hsuid[i] = ' ';
	card->options.hsuid[8] = '\0';
	FUNC10(card->options.hsuid, tmp, FUNC9(tmp));
	FUNC0(card->options.hsuid, 8);
	if (card->dev)
		FUNC3(card->dev->perm_addr, card->options.hsuid, 9);

	addr = FUNC7(QETH_PROT_IPV6);
	if (addr != NULL) {
		addr->u.a6.addr.s6_addr32[0] = 0xfe800000;
		addr->u.a6.addr.s6_addr32[1] = 0x00000000;
		for (i = 8; i < 16; i++)
			addr->u.a6.addr.s6_addr[i] = card->options.hsuid[i - 8];
		addr->u.a6.pfxlen = 0;
		addr->type = QETH_IP_TYPE_NORMAL;
	} else
		return -ENOMEM;
	if (!FUNC5(card, addr))
		FUNC2(addr);
	FUNC8(card);

	return count;
}