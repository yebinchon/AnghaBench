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
struct mite_struct {scalar_t__ mite_io_addr; } ;
struct comedi_device {scalar_t__ attached; int /*<<< orphan*/  spinlock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {unsigned short (* stc_readw ) (struct comedi_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mite_channel_lock; TYPE_1__* ao_mite_chan; TYPE_1__* ai_mite_chan; struct mite_struct* mite; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_Status_1_Register ; 
 int /*<<< orphan*/  AO_Status_1_Register ; 
 int /*<<< orphan*/  CHOR_CLRLC ; 
 unsigned int CHSR_INT ; 
 unsigned int CHSR_LINKC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned short Interrupt_A_St ; 
 unsigned short Interrupt_B_St ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,unsigned short) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned short,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,unsigned short,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned short FUNC11 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC12 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *d)
{
	struct comedi_device *dev = d;
	unsigned short a_status;
	unsigned short b_status;
	unsigned int ai_mite_status = 0;
	unsigned int ao_mite_status = 0;
	unsigned long flags;
#ifdef PCIDMA
	struct mite_struct *mite = devpriv->mite;
#endif

	if (dev->attached == 0)
		return IRQ_NONE;
	FUNC8();		/*  make sure dev->attached is checked before handler does anything else. */

	/*  lock to avoid race with comedi_poll */
	FUNC9(&dev->spinlock, flags);
	a_status = devpriv->stc_readw(dev, AI_Status_1_Register);
	b_status = devpriv->stc_readw(dev, AO_Status_1_Register);
#ifdef PCIDMA
	if (mite) {
		unsigned long flags_too;

		spin_lock_irqsave(&devpriv->mite_channel_lock, flags_too);
		if (devpriv->ai_mite_chan) {
			ai_mite_status = mite_get_status(devpriv->ai_mite_chan);
			if (ai_mite_status & CHSR_LINKC)
				writel(CHOR_CLRLC,
				       devpriv->mite->mite_io_addr +
				       MITE_CHOR(devpriv->
						 ai_mite_chan->channel));
		}
		if (devpriv->ao_mite_chan) {
			ao_mite_status = mite_get_status(devpriv->ao_mite_chan);
			if (ao_mite_status & CHSR_LINKC)
				writel(CHOR_CLRLC,
				       mite->mite_io_addr +
				       MITE_CHOR(devpriv->
						 ao_mite_chan->channel));
		}
		spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags_too);
	}
#endif
	FUNC1(dev, a_status);
	FUNC2(dev, b_status);
	if ((a_status & Interrupt_A_St) || (ai_mite_status & CHSR_INT))
		FUNC3(dev, a_status, ai_mite_status);
	if ((b_status & Interrupt_B_St) || (ao_mite_status & CHSR_INT))
		FUNC4(dev, b_status, ao_mite_status);
	FUNC6(dev, 0);
	FUNC6(dev, 1);
	FUNC5(dev);

	FUNC10(&dev->spinlock, flags);
	return IRQ_HANDLED;
}