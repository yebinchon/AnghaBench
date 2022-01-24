#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sniffer; } ;
struct TYPE_3__ {scalar_t__ promisc_mode; scalar_t__ guestlan; } ;
struct qeth_card {TYPE_2__ options; TYPE_1__ info; struct net_device* dev; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  IPA_SETADP_SET_DIAG_ASSIST ; 
 int /*<<< orphan*/  IPA_SETADP_SET_PROMISC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_DISABLE ; 
 int /*<<< orphan*/  QETH_DIAGS_CMD_TRACE_ENABLE ; 
 scalar_t__ SET_PROMISC_MODE_OFF ; 
 scalar_t__ SET_PROMISC_MODE_ON ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC1 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*) ; 

__attribute__((used)) static void
FUNC4(struct qeth_card *card)
{
	struct net_device *dev = card->dev;

	if (((dev->flags & IFF_PROMISC) &&
	     (card->info.promisc_mode == SET_PROMISC_MODE_ON)) ||
	    (!(dev->flags & IFF_PROMISC) &&
	     (card->info.promisc_mode == SET_PROMISC_MODE_OFF)))
		return;

	if (card->info.guestlan) {		/* Guestlan trace */
		if (FUNC1(card, IPA_SETADP_SET_PROMISC_MODE))
			FUNC3(card);
	} else if (card->options.sniffer &&	/* HiperSockets trace */
		   FUNC1(card, IPA_SETADP_SET_DIAG_ASSIST)) {
		if (dev->flags & IFF_PROMISC) {
			FUNC0(TRACE, 3, "+promisc");
			FUNC2(card, QETH_DIAGS_CMD_TRACE_ENABLE);
		} else {
			FUNC0(TRACE, 3, "-promisc");
			FUNC2(card, QETH_DIAGS_CMD_TRACE_DISABLE);
		}
	}
}