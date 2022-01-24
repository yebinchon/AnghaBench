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
struct virtnet_info {int /*<<< orphan*/  rvq; int /*<<< orphan*/  dev; } ;
struct skb_vnet_hdr {int /*<<< orphan*/  hdr; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct scatterlist {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MAX_PACKET_LEN ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct skb_vnet_hdr* FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct virtnet_info *vi, gfp_t gfp)
{
	struct sk_buff *skb;
	struct skb_vnet_hdr *hdr;
	struct scatterlist sg[2];
	int err;

	skb = FUNC1(vi->dev, MAX_PACKET_LEN + NET_IP_ALIGN);
	if (FUNC7(!skb))
		return -ENOMEM;

	FUNC4(skb, NET_IP_ALIGN);
	FUNC3(skb, MAX_PACKET_LEN);

	hdr = FUNC6(skb);
	FUNC2(sg, &hdr->hdr, sizeof hdr->hdr);

	FUNC5(skb, sg + 1, 0, skb->len);

	err = FUNC8(vi->rvq, sg, 0, 2, skb);
	if (err < 0)
		FUNC0(skb);

	return err;
}