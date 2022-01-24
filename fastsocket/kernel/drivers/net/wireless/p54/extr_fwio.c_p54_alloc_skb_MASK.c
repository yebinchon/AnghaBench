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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct p54_hdr {scalar_t__ rts_tries; scalar_t__ tries; void* type; void* len; void* flags; } ;
struct p54_common {int /*<<< orphan*/  tx_hdr_len; int /*<<< orphan*/  tx_pending; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 size_t P54_MAX_CTRL_FRAME_LEN ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct p54_common *priv, u16 hdr_flags,
				     u16 payload_len, u16 type, gfp_t memflags)
{
	struct p54_hdr *hdr;
	struct sk_buff *skb;
	size_t frame_len = sizeof(*hdr) + payload_len;

	if (frame_len > P54_MAX_CTRL_FRAME_LEN)
		return NULL;

	if (FUNC5(FUNC3(&priv->tx_pending) > 64))
		return NULL;

	skb = FUNC0(priv->tx_hdr_len + frame_len, memflags);
	if (!skb)
		return NULL;
	FUNC4(skb, priv->tx_hdr_len);

	hdr = (struct p54_hdr *) FUNC2(skb, sizeof(*hdr));
	hdr->flags = FUNC1(hdr_flags);
	hdr->len = FUNC1(payload_len);
	hdr->type = FUNC1(type);
	hdr->tries = hdr->rts_tries = 0;
	return skb;
}