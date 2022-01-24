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
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int /*<<< orphan*/  completed_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct urb *FUNC3(struct bfusb_data *data)
{
	struct sk_buff *skb;
	struct urb *urb = NULL;

	FUNC0("bfusb %p", data);

	skb = FUNC2(&data->completed_q);
	if (skb) {
		urb = ((struct bfusb_data_scb *) skb->cb)->urb;
		FUNC1(skb);
	}

	return urb;
}