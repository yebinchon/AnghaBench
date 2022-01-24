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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  isdn_net_local ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  CISCO_ADDR_UNICAST ; 
 int /*<<< orphan*/  CISCO_CTRL ; 
 int /*<<< orphan*/  CISCO_SLARP_REQUEST ; 
 int /*<<< orphan*/  CISCO_TYPE_SLARP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 unsigned char* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC5(isdn_net_local *lp)
{
	struct sk_buff *skb;
	unsigned char *p;

	skb = FUNC2(lp, 4 + 14);
	if (!skb)
		return;

	p = FUNC4(skb, 4 + 14);

	/* cisco header */
	*(u8 *)(p + 0) = CISCO_ADDR_UNICAST;
	*(u8 *)(p + 1) = CISCO_CTRL;
	*(__be16 *)(p + 2) = FUNC0(CISCO_TYPE_SLARP);

	/* slarp request */
	*(__be32 *)(p +  4) = FUNC1(CISCO_SLARP_REQUEST);
	*(__be32 *)(p +  8) = FUNC1(0); // address
	*(__be32 *)(p + 12) = FUNC1(0); // netmask
	*(__be16 *)(p + 16) = FUNC0(0); // unused
	p += 18;

	FUNC3(lp, skb);
}