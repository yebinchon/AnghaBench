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
struct usbnet {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  INT51X1_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, struct sk_buff *skb)
{
	int len;

	if (!(FUNC2(skb, INT51X1_HEADER_SIZE))) {
		FUNC0(dev, "unexpected tiny rx frame");
		return 0;
	}

	len = FUNC1(*(__le16 *)&skb->data[skb->len - 2]);

	FUNC3(skb, len);

	return 1;
}