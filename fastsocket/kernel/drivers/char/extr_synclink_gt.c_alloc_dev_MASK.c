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
struct TYPE_2__ {int close_delay; int closing_wait; int /*<<< orphan*/ * ops; } ;
struct slgt_info {int max_frame_size; int base_clock; int adapter_num; int port_num; int init_error; int /*<<< orphan*/  irq_flags; int /*<<< orphan*/  bus_type; int /*<<< orphan*/  phys_reg_addr; int /*<<< orphan*/  irq_level; struct pci_dev* pdev; int /*<<< orphan*/  rx_timer; int /*<<< orphan*/  tx_timer; int /*<<< orphan*/  idle_mode; int /*<<< orphan*/  params; int /*<<< orphan*/  netlock; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; TYPE_1__ port; int /*<<< orphan*/  rbuf_fill_level; int /*<<< orphan*/  task; int /*<<< orphan*/  magic; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  MGSL_PARAMS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMABUFSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDLC_TXIDLE_FLAGS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MGSL_BUS_TYPE_PCI ; 
 int /*<<< orphan*/  MGSL_MAGIC ; 
 int /*<<< orphan*/  bh_handler ; 
 int /*<<< orphan*/  default_params ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct slgt_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_timeout ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  slgt_port_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  tx_timeout ; 

__attribute__((used)) static struct slgt_info *FUNC9(int adapter_num, int port_num, struct pci_dev *pdev)
{
	struct slgt_info *info;

	info = FUNC3(sizeof(struct slgt_info), GFP_KERNEL);

	if (!info) {
		FUNC0(("%s device alloc failed adapter=%d port=%d\n",
			driver_name, adapter_num, port_num));
	} else {
		FUNC8(&info->port);
		info->port.ops = &slgt_port_ops;
		info->magic = MGSL_MAGIC;
		FUNC1(&info->task, bh_handler);
		info->max_frame_size = 4096;
		info->base_clock = 14745600;
		info->rbuf_fill_level = DMABUFSIZE;
		info->port.close_delay = 5*HZ/10;
		info->port.closing_wait = 30*HZ;
		FUNC2(&info->status_event_wait_q);
		FUNC2(&info->event_wait_q);
		FUNC7(&info->netlock);
		FUNC4(&info->params,&default_params,sizeof(MGSL_PARAMS));
		info->idle_mode = HDLC_TXIDLE_FLAGS;
		info->adapter_num = adapter_num;
		info->port_num = port_num;

		FUNC6(&info->tx_timer, tx_timeout, (unsigned long)info);
		FUNC6(&info->rx_timer, rx_timeout, (unsigned long)info);

		/* Copy configuration info to device instance data */
		info->pdev = pdev;
		info->irq_level = pdev->irq;
		info->phys_reg_addr = FUNC5(pdev,0);

		info->bus_type = MGSL_BUS_TYPE_PCI;
		info->irq_flags = IRQF_SHARED;

		info->init_error = -1; /* assume error, set to 0 on successful init */
	}

	return info;
}