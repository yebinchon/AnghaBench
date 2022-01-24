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
typedef  int u32 ;
struct tty_struct {int dummy; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;
struct TYPE_3__ {int data_rate; } ;
struct slgt_info {int irq_occurred; void* init_error; TYPE_2__ port; TYPE_1__ params; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BIT1 ; 
 void* DiagStatus_IrqFailure ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_TXIDLE ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  TDR ; 
 int /*<<< orphan*/  FUNC0 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct slgt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct slgt_info*,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC8(struct slgt_info *info)
{
	unsigned long timeout;
	unsigned long flags;
	struct tty_struct *oldtty = info->port.tty;
	u32 speed = info->params.data_rate;

	info->params.data_rate = 921600;
	info->port.tty = NULL;

	FUNC5(&info->lock, flags);
	FUNC0(info);
	FUNC4(info, IRQ_TXIDLE);

	/* enable transmitter */
	FUNC7(info, TCR,
		(unsigned short)(FUNC2(info, TCR) | BIT1));

	/* write one byte and wait for tx idle */
	FUNC7(info, TDR, 0);

	/* assume failure */
	info->init_error = DiagStatus_IrqFailure;
	info->irq_occurred = false;

	FUNC6(&info->lock, flags);

	timeout=100;
	while(timeout-- && !info->irq_occurred)
		FUNC1(10);

	FUNC5(&info->lock,flags);
	FUNC3(info);
	FUNC6(&info->lock,flags);

	info->params.data_rate = speed;
	info->port.tty = oldtty;

	info->init_error = info->irq_occurred ? 0 : DiagStatus_IrqFailure;
	return info->irq_occurred ? 0 : -ENODEV;
}