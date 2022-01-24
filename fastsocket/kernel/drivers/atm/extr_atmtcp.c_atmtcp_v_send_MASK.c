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
struct sk_buff {int len; } ;
struct atmtcp_hdr {int /*<<< orphan*/  length; void* vci; void* vpi; } ;
struct atmtcp_dev_data {struct atm_vcc* vcc; } ;
struct TYPE_4__ {scalar_t__ traffic_class; } ;
struct TYPE_5__ {TYPE_1__ txtp; } ;
struct atm_vcc {TYPE_3__* stats; int /*<<< orphan*/  (* push ) (struct atm_vcc*,struct sk_buff*) ;int /*<<< orphan*/  (* pop ) (struct atm_vcc*,struct sk_buff*) ;int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; int /*<<< orphan*/  dev; TYPE_2__ qos; } ;
struct TYPE_6__ {int /*<<< orphan*/  rx; int /*<<< orphan*/  tx; int /*<<< orphan*/  tx_err; } ;

/* Variables and functions */
 scalar_t__ ATM_NONE ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOLINK ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct atmtcp_dev_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct atm_vcc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct atm_vcc*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC13(struct atm_vcc *vcc,struct sk_buff *skb)
{
	struct atmtcp_dev_data *dev_data;
	struct atm_vcc *out_vcc=NULL; /* Initializer quietens GCC warning */
	struct sk_buff *new_skb;
	struct atmtcp_hdr *hdr;
	int size;

	if (vcc->qos.txtp.traffic_class == ATM_NONE) {
		if (vcc->pop) vcc->pop(vcc,skb);
		else FUNC3(skb);
		return -EINVAL;
	}
	dev_data = FUNC0(vcc->dev);
	if (dev_data) out_vcc = dev_data->vcc;
	if (!dev_data || !out_vcc) {
		if (vcc->pop) vcc->pop(vcc,skb);
		else FUNC3(skb);
		if (dev_data) return 0;
		FUNC2(&vcc->stats->tx_err);
		return -ENOLINK;
	}
	size = skb->len+sizeof(struct atmtcp_hdr);
	new_skb = FUNC1(out_vcc,size,GFP_ATOMIC);
	if (!new_skb) {
		if (vcc->pop) vcc->pop(vcc,skb);
		else FUNC3(skb);
		FUNC2(&vcc->stats->tx_err);
		return -ENOBUFS;
	}
	hdr = (void *) FUNC7(new_skb,sizeof(struct atmtcp_hdr));
	hdr->vpi = FUNC5(vcc->vpi);
	hdr->vci = FUNC5(vcc->vci);
	hdr->length = FUNC4(skb->len);
	FUNC6(skb, FUNC7(new_skb, skb->len), skb->len);
	if (vcc->pop) vcc->pop(vcc,skb);
	else FUNC3(skb);
	out_vcc->push(out_vcc,new_skb);
	FUNC2(&vcc->stats->tx);
	FUNC2(&out_vcc->stats->rx);
	return 0;
}