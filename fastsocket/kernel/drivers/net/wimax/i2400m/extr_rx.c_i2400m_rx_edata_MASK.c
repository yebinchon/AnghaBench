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
typedef  unsigned int u32 ;
struct sk_buff {int /*<<< orphan*/  cb; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct i2400m_roq_data {unsigned int sn; int cs; } ;
struct i2400m_roq {int /*<<< orphan*/  ws; } ;
struct i2400m_pl_edata_hdr {int cs; int /*<<< orphan*/  reorder; } ;
struct TYPE_3__ {struct net_device* net_dev; } ;
struct i2400m {struct i2400m_roq* rx_roq; TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum i2400m_cs { ____Placeholder_i2400m_cs } i2400m_cs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int I2400M_RO_CIN ; 
 unsigned int I2400M_RO_CIN_SHIFT ; 
 unsigned int I2400M_RO_NEEDED ; 
 unsigned int I2400M_RO_SN ; 
 unsigned int I2400M_RO_SN_SHIFT ; 
 unsigned int I2400M_RO_TYPE ; 
#define  I2400M_RO_TYPE_PACKET 131 
#define  I2400M_RO_TYPE_PACKET_WS 130 
#define  I2400M_RO_TYPE_RESET 129 
 unsigned int I2400M_RO_TYPE_SHIFT ; 
#define  I2400M_RO_TYPE_WS 128 
 int /*<<< orphan*/  FUNC1 (struct i2400m_roq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 struct device* FUNC7 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2400m*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2400m*,struct i2400m_roq*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2400m*,struct i2400m_roq*) ; 
 int /*<<< orphan*/  FUNC12 (struct i2400m*,struct i2400m_roq*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 struct sk_buff* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 

__attribute__((used)) static
void FUNC20(struct i2400m *i2400m, struct sk_buff *skb_rx,
		     unsigned single_last, const void *payload, size_t size)
{
	struct device *dev = FUNC7(i2400m);
	const struct i2400m_pl_edata_hdr *hdr = payload;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;
	struct sk_buff *skb;
	enum i2400m_cs cs;
	u32 reorder;
	unsigned ro_needed, ro_type, ro_cin, ro_sn;
	struct i2400m_roq *roq;
	struct i2400m_roq_data *roq_data;

	FUNC0(ETH_HLEN > sizeof(*hdr));

	FUNC4(2, dev, "(i2400m %p skb_rx %p single %u payload %p "
		  "size %zu)\n", i2400m, skb_rx, single_last, payload, size);
	if (size < sizeof(*hdr)) {
		FUNC6(dev, "ERX: HW BUG? message with short header (%zu "
			"vs %zu bytes expected)\n", size, sizeof(*hdr));
		goto error;
	}

	if (single_last) {
		skb = FUNC17(skb_rx);
		FUNC5(3, dev, "ERX: skb %p reusing\n", skb);
	} else {
		skb = FUNC15(skb_rx, GFP_KERNEL);
		if (skb == NULL) {
			FUNC6(dev, "ERX: no memory to clone skb\n");
			net_dev->stats.rx_dropped++;
			goto error_skb_clone;
		}
		FUNC5(3, dev, "ERX: skb %p cloned from %p\n", skb, skb_rx);
	}
	/* now we have to pull and trim so that the skb points to the
	 * beginning of the IP packet; the netdev part will add the
	 * ethernet header as needed - we know there is enough space
	 * because we checked in i2400m_rx_edata(). */
	FUNC18(skb, payload + sizeof(*hdr) - (void *) skb->data);
	FUNC19(skb, (void *) FUNC16(skb) - payload - sizeof(*hdr));

	reorder = FUNC14(hdr->reorder);
	ro_needed = reorder & I2400M_RO_NEEDED;
	cs = hdr->cs;
	if (ro_needed) {
		ro_type = (reorder >> I2400M_RO_TYPE_SHIFT) & I2400M_RO_TYPE;
		ro_cin = (reorder >> I2400M_RO_CIN_SHIFT) & I2400M_RO_CIN;
		ro_sn = (reorder >> I2400M_RO_SN_SHIFT) & I2400M_RO_SN;

		roq = &i2400m->rx_roq[ro_cin];
		roq_data = (struct i2400m_roq_data *) &skb->cb;
		roq_data->sn = ro_sn;
		roq_data->cs = cs;
		FUNC5(2, dev, "ERX: reorder needed: "
			 "type %u cin %u [ws %u] sn %u/%u len %zuB\n",
			 ro_type, ro_cin, roq->ws, ro_sn,
			 FUNC1(roq, ro_sn), size);
		FUNC2(2, dev, payload, size);
		switch(ro_type) {
		case I2400M_RO_TYPE_RESET:
			FUNC11(i2400m, roq);
			FUNC13(skb);	/* no data here */
			break;
		case I2400M_RO_TYPE_PACKET:
			FUNC9(i2400m, roq, skb, ro_sn);
			break;
		case I2400M_RO_TYPE_WS:
			FUNC12(i2400m, roq, ro_sn);
			FUNC13(skb);	/* no data here */
			break;
		case I2400M_RO_TYPE_PACKET_WS:
			FUNC10(i2400m, roq, skb, ro_sn);
			break;
		default:
			FUNC6(dev, "HW BUG? unknown reorder type %u\n", ro_type);
		}
	}
	else
		FUNC8(i2400m, skb, cs);
error_skb_clone:
error:
	FUNC3(2, dev, "(i2400m %p skb_rx %p single %u payload %p "
		"size %zu) = void\n", i2400m, skb_rx, single_last, payload, size);
	return;
}