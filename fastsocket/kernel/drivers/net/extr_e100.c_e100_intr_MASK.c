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
typedef  int u8 ;
struct nic {int /*<<< orphan*/  napi; int /*<<< orphan*/  ru_running; TYPE_2__* csr; int /*<<< orphan*/  netdev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  stat_ack; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  RU_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nic*) ; 
 int /*<<< orphan*/  intr ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct nic* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int stat_ack_not_ours ; 
 int stat_ack_not_present ; 
 int stat_ack_rnr ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *netdev = dev_id;
	struct nic *nic = FUNC6(netdev);
	u8 stat_ack = FUNC2(&nic->csr->scb.stat_ack);

	FUNC7(nic, intr, KERN_DEBUG, nic->netdev,
		     "stat_ack = 0x%02X\n", stat_ack);

	if (stat_ack == stat_ack_not_ours ||	/* Not our interrupt */
	   stat_ack == stat_ack_not_present)	/* Hardware is ejected */
		return IRQ_NONE;

	/* Ack interrupt(s) */
	FUNC3(stat_ack, &nic->csr->scb.stat_ack);

	/* We hit Receive No Resource (RNR); restart RU after cleaning */
	if (stat_ack & stat_ack_rnr)
		nic->ru_running = RU_SUSPENDED;

	if (FUNC4(FUNC5(&nic->napi))) {
		FUNC1(nic);
		FUNC0(&nic->napi);
	}

	return IRQ_HANDLED;
}