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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int rx_wsize; int tx_wsize; int /*<<< orphan*/  maxio; int /*<<< orphan*/  timeout; int /*<<< orphan*/  in_use; } ;
struct TYPE_3__ {int /*<<< orphan*/  icr; } ;

/* Variables and functions */
#define  DSP56K_DEV_56001 128 
 int /*<<< orphan*/  DSP56K_ICR_HF0 ; 
 int /*<<< orphan*/  DSP56K_ICR_HF1 ; 
 int /*<<< orphan*/  DSP56K_RX_INT_OFF ; 
 int /*<<< orphan*/  DSP56K_TX_INT_OFF ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  MAXIO ; 
 int /*<<< orphan*/  TIMEOUT ; 
 TYPE_2__ dsp56k ; 
 TYPE_1__ dsp56k_host_interface ; 
 int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	int dev = FUNC0(inode) & 0x0f;
	int ret = 0;

	FUNC1();
	switch(dev)
	{
	case DSP56K_DEV_56001:

		if (FUNC2(0, &dsp56k.in_use)) {
			ret = -EBUSY;
			goto out;
		}

		dsp56k.timeout = TIMEOUT;
		dsp56k.maxio = MAXIO;
		dsp56k.rx_wsize = dsp56k.tx_wsize = 4; 

		DSP56K_TX_INT_OFF;
		DSP56K_RX_INT_OFF;

		/* Zero host flags */
		dsp56k_host_interface.icr &= ~DSP56K_ICR_HF0;
		dsp56k_host_interface.icr &= ~DSP56K_ICR_HF1;

		break;

	default:
		ret = -ENODEV;
	}
out:
	FUNC3();
	return ret;
}