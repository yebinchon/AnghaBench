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
struct plip_local {int /*<<< orphan*/ * skb; void* state; } ;
struct net_local {scalar_t__ port_owner; int /*<<< orphan*/  pardev; int /*<<< orphan*/  connection; scalar_t__ is_deferred; int /*<<< orphan*/  killed_timer_cmp; int /*<<< orphan*/  kill_timer; struct plip_local rcv_data; struct plip_local snd_data; } ;
struct net_device {int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  PLIP_CN_NONE ; 
 void* PLIP_PK_DONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_local* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct net_device *dev)
{
	struct net_local *nl = FUNC7(dev);
	struct plip_local *snd = &nl->snd_data;
	struct plip_local *rcv = &nl->rcv_data;

	FUNC8 (dev);
	FUNC0(dev->irq);
	FUNC11(dev->irq);

	if (dev->irq == -1)
	{
		FUNC5(&nl->killed_timer_cmp);
		FUNC3 (&nl->kill_timer, 1);
		FUNC12(&nl->killed_timer_cmp);
	}

#ifdef NOTDEF
	outb(0x00, PAR_DATA(dev));
#endif
	nl->is_deferred = 0;
	nl->connection = PLIP_CN_NONE;
	if (nl->port_owner) {
		FUNC10(nl->pardev);
		nl->port_owner = 0;
	}

	snd->state = PLIP_PK_DONE;
	if (snd->skb) {
		FUNC4(snd->skb);
		snd->skb = NULL;
	}
	rcv->state = PLIP_PK_DONE;
	if (rcv->skb) {
		FUNC6(rcv->skb);
		rcv->skb = NULL;
	}

#ifdef NOTDEF
	/* Reset. */
	outb(0x00, PAR_CONTROL(dev));
#endif
	return 0;
}