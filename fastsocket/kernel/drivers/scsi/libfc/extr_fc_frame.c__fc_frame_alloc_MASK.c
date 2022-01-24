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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 scalar_t__ FC_FRAME_HEADROOM ; 
 scalar_t__ FC_FRAME_TAILROOM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ NET_SKB_PAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 

struct fc_frame *FUNC5(size_t len)
{
	struct fc_frame *fp;
	struct sk_buff *skb;

	FUNC0((len % sizeof(u32)) != 0);
	len += sizeof(struct fc_frame_header);
	skb = FUNC1(len + FC_FRAME_HEADROOM + FC_FRAME_TAILROOM +
			       NET_SKB_PAD, GFP_ATOMIC);
	if (!skb)
		return NULL;
	FUNC4(skb, NET_SKB_PAD + FC_FRAME_HEADROOM);
	fp = (struct fc_frame *) skb;
	FUNC2(fp);
	FUNC3(skb, len);
	return fp;
}