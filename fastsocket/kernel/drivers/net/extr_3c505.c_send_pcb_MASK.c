#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int* raw; } ;
struct TYPE_9__ {int length; TYPE_2__ data; int /*<<< orphan*/  command; } ;
typedef  TYPE_3__ pcb_struct ;
struct TYPE_7__ {scalar_t__ direction; } ;
struct TYPE_10__ {int hcr_val; scalar_t__ send_pcb_semaphore; int /*<<< orphan*/  lock; TYPE_1__ current_dma; scalar_t__ dmaing; } ;
typedef  TYPE_4__ elp_device ;

/* Variables and functions */
#define  ASF_PCB_ACK 129 
#define  ASF_PCB_NAK 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int elp_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int jiffies ; 
 TYPE_4__* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int,scalar_t__*) ; 
 scalar_t__ FUNC13 (int,unsigned long) ; 

__attribute__((used)) static bool FUNC14(struct net_device *dev, pcb_struct * pcb)
{
	int i;
	unsigned long timeout;
	elp_device *adapter = FUNC3(dev);
	unsigned long flags;

	FUNC1(dev);

	if (adapter->dmaing && adapter->current_dma.direction == 0)
		return false;

	/* Avoid contention */
	if (FUNC12(1, &adapter->send_pcb_semaphore)) {
		if (elp_debug >= 3) {
			FUNC6("%s: send_pcb entered while threaded\n", dev->name);
		}
		return false;
	}
	/*
	 * load each byte into the command register and
	 * wait for the HCRE bit to indicate the adapter
	 * had read the byte
	 */
	FUNC9(dev, 0);

	if (FUNC8(dev->base_addr, pcb->command))
		goto abort;

	FUNC10(&adapter->lock, flags);

	if (FUNC7(dev->base_addr, pcb->length))
		goto sti_abort;

	for (i = 0; i < pcb->length; i++) {
		if (FUNC7(dev->base_addr, pcb->data.raw[i]))
			goto sti_abort;
	}

	FUNC5(adapter->hcr_val | 3, dev);	/* signal end of PCB */
	FUNC4(2 + pcb->length, dev->base_addr);

	/* now wait for the acknowledgement */
	FUNC11(&adapter->lock, flags);

	for (timeout = jiffies + 5*HZ/100; FUNC13(jiffies, timeout);) {
		switch (FUNC0(dev->base_addr)) {
		case ASF_PCB_ACK:
			adapter->send_pcb_semaphore = 0;
			return true;

		case ASF_PCB_NAK:
#ifdef ELP_DEBUG
			pr_debug("%s: send_pcb got NAK\n", dev->name);
#endif
			goto abort;
		}
	}

	if (elp_debug >= 1)
		FUNC6("%s: timeout waiting for PCB acknowledge (status %02x)\n",
			dev->name, FUNC2(dev->base_addr));
	goto abort;

      sti_abort:
	FUNC11(&adapter->lock, flags);
      abort:
	adapter->send_pcb_semaphore = 0;
	return false;
}