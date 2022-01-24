#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; struct kaweth_device* context; } ;
struct sk_buff {int dummy; } ;
struct kaweth_device {TYPE_1__* net; struct sk_buff* tx_skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct urb *urb)
{
	struct kaweth_device *kaweth = urb->context;
	struct sk_buff *skb = kaweth->tx_skb;
	int status = urb->status;

	if (FUNC3(status != 0))
		if (status != -ENOENT)
			FUNC0("%s: TX status %d.", kaweth->net->name, status);

	FUNC2(kaweth->net);
	FUNC1(skb);
}