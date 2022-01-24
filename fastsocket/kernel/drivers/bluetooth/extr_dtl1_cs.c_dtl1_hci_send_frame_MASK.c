#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; scalar_t__ driver_data; } ;
struct TYPE_8__ {int type; int len; scalar_t__ zero; } ;
typedef  TYPE_2__ nsh_t ;
struct TYPE_9__ {int /*<<< orphan*/  txq; } ;
typedef  TYPE_3__ dtl1_info_t ;
struct TYPE_10__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EILSEQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 scalar_t__ NSHL ; 
 TYPE_6__* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 scalar_t__* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb)
{
	dtl1_info_t *info;
	struct hci_dev *hdev = (struct hci_dev *)(skb->dev);
	struct sk_buff *s;
	nsh_t nsh;

	if (!hdev) {
		FUNC0("Frame for unknown HCI device (hdev=NULL)");
		return -ENODEV;
	}

	info = (dtl1_info_t *)(hdev->driver_data);

	switch (FUNC1(skb)->pkt_type) {
	case HCI_COMMAND_PKT:
		hdev->stat.cmd_tx++;
		nsh.type = 0x81;
		break;
	case HCI_ACLDATA_PKT:
		hdev->stat.acl_tx++;
		nsh.type = 0x82;
		break;
	case HCI_SCODATA_PKT:
		hdev->stat.sco_tx++;
		nsh.type = 0x83;
		break;
	default:
		return -EILSEQ;
	};

	nsh.zero = 0;
	nsh.len = skb->len;

	s = FUNC2(NSHL + skb->len + 1, GFP_ATOMIC);
	if (!s)
		return -ENOMEM;

	FUNC10(s, NSHL);
	FUNC6(skb, FUNC8(s, skb->len), skb->len);
	if (skb->len & 0x0001)
		*FUNC8(s, 1) = 0;	/* PAD */

	/* Prepend skb with Nokia frame header and queue */
	FUNC5(FUNC7(s, NSHL), &nsh, NSHL);
	FUNC9(&(info->txq), s);

	FUNC3(info);

	FUNC4(skb);

	return 0;
}