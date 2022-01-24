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
typedef  int u_short ;
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int char_count; int char_max; int char_last; int /*<<< orphan*/  int_count; } ;
struct cyclades_port {scalar_t__ tty; TYPE_1__ mon; int /*<<< orphan*/  last_active; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ BASE_ADDR ; 
 size_t CyLICR ; 
 unsigned char CyNOTRANS ; 
 size_t CyRDR ; 
 size_t CyREOIR ; 
 size_t CyRFOC ; 
 int DEBUG_PORT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 struct cyclades_port* cy_port ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC4 (long) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct tty_struct *tty;
	struct cyclades_port *info;
	volatile unsigned char *base_addr = (unsigned char *)BASE_ADDR;
	int channel;
	char data;
	int char_count;
	int save_cnt;
	int len;

	/* determine the channel and change to that context */
	channel = (u_short) (base_addr[CyLICR] >> 2);
	info = &cy_port[channel];
	info->last_active = jiffies;
	save_cnt = char_count = base_addr[CyRFOC];

#ifdef CONFIG_REMOTE_DEBUG
	if (channel == DEBUG_PORT) {
		while (char_count--) {
			data = base_addr[CyRDR];
			queueDebugChar(data);
		}
	} else
#endif
		/* if there is nowhere to put the data, discard it */
	if (info->tty == 0) {
		while (char_count--) {
			data = base_addr[CyRDR];
		}
	} else {		/* there is an open port for this data */
		tty = info->tty;
		/* load # characters available from the chip */

#ifdef CYCLOM_ENABLE_MONITORING
		++info->mon.int_count;
		info->mon.char_count += char_count;
		if (char_count > info->mon.char_max)
			info->mon.char_max = char_count;
		info->mon.char_last = char_count;
#endif
		len = FUNC1(tty, char_count);
		while (len--) {
			data = base_addr[CyRDR];
			FUNC2(tty, data, TTY_NORMAL);
#ifdef CYCLOM_16Y_HACK
			udelay(10L);
#endif
		}
		FUNC3(tty);
	}
	/* end of service */
	base_addr[CyREOIR] = save_cnt ? 0 : CyNOTRANS;
	return IRQ_HANDLED;
}