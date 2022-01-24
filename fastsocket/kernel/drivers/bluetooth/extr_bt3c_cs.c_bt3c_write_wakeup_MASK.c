#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_3__* hdev; int /*<<< orphan*/  tx_state; int /*<<< orphan*/  txq; TYPE_5__* p_dev; } ;
typedef  TYPE_4__ bt3c_info_t ;
struct TYPE_7__ {unsigned int BasePort1; } ;
struct TYPE_11__ {TYPE_1__ io; } ;
struct TYPE_8__ {int byte_tx; } ;
struct TYPE_9__ {TYPE_2__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XMIT_SENDING ; 
 int FUNC1 (unsigned int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(bt3c_info_t *info)
{
	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	if (FUNC6(XMIT_SENDING, &(info->tx_state)))
		return;

	do {
		register unsigned int iobase = info->p_dev->io.BasePort1;
		register struct sk_buff *skb;
		register int len;

		if (!FUNC4(info->p_dev))
			break;


		if (!(skb = FUNC5(&(info->txq)))) {
			FUNC2(XMIT_SENDING, &(info->tx_state));
			break;
		}

		/* Send frame */
		len = FUNC1(iobase, 256, skb->data, skb->len);

		if (len != skb->len) {
			FUNC0("Very strange");
		}

		FUNC3(skb);

		info->hdev->stat.byte_tx += len;

	} while (0);
}