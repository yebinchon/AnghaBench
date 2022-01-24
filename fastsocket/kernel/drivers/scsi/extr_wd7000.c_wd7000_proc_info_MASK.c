#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  host_no; scalar_t__ hostdata; } ;
typedef  long off_t ;
struct TYPE_4__ {TYPE_2__* icmb; TYPE_2__* ogmb; } ;
struct TYPE_6__ {int bus_on; int bus_off; int /*<<< orphan*/  next_ogmb; int /*<<< orphan*/  control; TYPE_1__ mb; int /*<<< orphan*/  int_counter; int /*<<< orphan*/  dma; int /*<<< orphan*/  irq; int /*<<< orphan*/  iobase; int /*<<< orphan*/  rev2; int /*<<< orphan*/  rev1; } ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef  TYPE_2__ Mailbox ;
typedef  TYPE_3__ Adapter ;

/* Variables and functions */
 size_t ICMB_CNT ; 
 size_t OGMB_CNT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 size_t i ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (char*,int,struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *host, char *buffer, char **start, off_t offset, int length,  int inout)
{
	Adapter *adapter = (Adapter *)host->hostdata;
	unsigned long flags;
	char *pos = buffer;
#ifdef WD7000_DEBUG
	Mailbox *ogmbs, *icmbs;
	short count;
#endif

	/*
	 * Has data been written to the file ?
	 */
	if (inout)
		return (FUNC3(buffer, length, host));

	FUNC1(host->host_lock, flags);
	FUNC0("Host scsi%d: Western Digital WD-7000 (rev %d.%d)\n", host->host_no, adapter->rev1, adapter->rev2);
	FUNC0("  IO base:      0x%x\n", adapter->iobase);
	FUNC0("  IRQ:          %d\n", adapter->irq);
	FUNC0("  DMA channel:  %d\n", adapter->dma);
	FUNC0("  Interrupts:   %d\n", adapter->int_counter);
	FUNC0("  BUS_ON time:  %d nanoseconds\n", adapter->bus_on * 125);
	FUNC0("  BUS_OFF time: %d nanoseconds\n", adapter->bus_off * 125);

#ifdef WD7000_DEBUG
	ogmbs = adapter->mb.ogmb;
	icmbs = adapter->mb.icmb;

	SPRINTF("\nControl port value: 0x%x\n", adapter->control);
	SPRINTF("Incoming mailbox:\n");
	SPRINTF("  size: %d\n", ICMB_CNT);
	SPRINTF("  queued messages: ");

	for (i = count = 0; i < ICMB_CNT; i++)
		if (icmbs[i].status) {
			count++;
			SPRINTF("0x%x ", i);
		}

	SPRINTF(count ? "\n" : "none\n");

	SPRINTF("Outgoing mailbox:\n");
	SPRINTF("  size: %d\n", OGMB_CNT);
	SPRINTF("  next message: 0x%x\n", adapter->next_ogmb);
	SPRINTF("  queued messages: ");

	for (i = count = 0; i < OGMB_CNT; i++)
		if (ogmbs[i].status) {
			count++;
			SPRINTF("0x%x ", i);
		}

	SPRINTF(count ? "\n" : "none\n");
#endif

	FUNC2(host->host_lock, flags);

	/*
	 * Calculate start of next buffer, and return value.
	 */
	*start = buffer + offset;

	if ((pos - buffer) < offset)
		return (0);
	else if ((pos - buffer - offset) < length)
		return (pos - buffer - offset);
	else
		return (length);
}