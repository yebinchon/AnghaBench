#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; char* data; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  protocol; TYPE_1__* dev; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
typedef  TYPE_2__ pc300dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETH_P_CUST ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(pc300dev_t *dev, char* buf, int len, char rxtx)
{
	struct sk_buff *skb; 

	if ((skb = FUNC1(10 + len)) == NULL) { 
		/* out of memory */ 
		FUNC0("%s: tty_trace - out of memory\n", dev->dev->name);
		return; 
	}

	FUNC6 (skb, 10 + len); 
	skb->dev = dev->dev; 
	skb->protocol = FUNC2(ETH_P_CUST); 
	FUNC7(skb);
	skb->pkt_type = PACKET_HOST; 
	skb->len = 10 + len; 

	FUNC4(skb, dev->dev->name, 5);
	skb->data[5] = '['; 
	skb->data[6] = rxtx; 
	skb->data[7] = ']'; 
	skb->data[8] = ':'; 
	skb->data[9] = ' '; 
	FUNC5(skb, 10, buf, len);
	FUNC3(skb); 
}