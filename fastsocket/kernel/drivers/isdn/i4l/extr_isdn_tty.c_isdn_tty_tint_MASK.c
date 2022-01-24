#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_3__ {int /*<<< orphan*/  xmit_queue; int /*<<< orphan*/  lsr; int /*<<< orphan*/  msr; int /*<<< orphan*/  send_outstanding; struct tty_struct* tty; int /*<<< orphan*/  isdn_channel; int /*<<< orphan*/  isdn_driver; } ;
typedef  TYPE_1__ modem_info ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LSR_TEMT ; 
 int /*<<< orphan*/  UART_MSR_CTS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void
FUNC5(modem_info * info)
{
	struct sk_buff *skb = FUNC2(&info->xmit_queue);
	int len, slen;

	if (!skb)
		return;
	len = skb->len;
	if ((slen = FUNC1(info->isdn_driver,
					   info->isdn_channel, 1, skb)) == len) {
		struct tty_struct *tty = info->tty;
		info->send_outstanding++;
		info->msr &= ~UART_MSR_CTS;
		info->lsr &= ~UART_LSR_TEMT;
		FUNC4(tty);
		return;
	}
	if (slen < 0) {
		/* Error: no channel, already shutdown, or wrong parameter */
		FUNC0(skb);
		return;
	}
	FUNC3(&info->xmit_queue, skb);
}