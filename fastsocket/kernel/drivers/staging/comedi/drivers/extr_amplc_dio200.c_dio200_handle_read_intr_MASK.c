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
struct dio200_subdev_intr {unsigned int enabled_isns; unsigned int valid_isns; scalar_t__ stopcount; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  continuous; scalar_t__ active; int /*<<< orphan*/  iobase; scalar_t__ has_int_sce; } ;
struct comedi_subdevice {TYPE_2__* async; struct dio200_subdev_intr* private; } ;
struct comedi_device {int dummy; } ;
struct TYPE_3__ {unsigned int chanlist_len; int /*<<< orphan*/ * chanlist; } ;
struct TYPE_4__ {unsigned int events; TYPE_1__ cmd; } ;

/* Variables and functions */
 int COMEDI_CB_BLOCK ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_EOS ; 
 int COMEDI_CB_ERROR ; 
 int COMEDI_CB_OVERFLOW ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,short) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev,
				   struct comedi_subdevice *s)
{
	struct dio200_subdev_intr *subpriv = s->private;
	unsigned triggered;
	unsigned intstat;
	unsigned cur_enabled;
	unsigned int oldevents;
	unsigned long flags;

	triggered = 0;

	FUNC7(&subpriv->spinlock, flags);
	oldevents = s->async->events;
	if (subpriv->has_int_sce) {
		/*
		 * Collect interrupt sources that have triggered and disable
		 * them temporarily.  Loop around until no extra interrupt
		 * sources have triggered, at which point, the valid part of
		 * the interrupt status register will read zero, clearing the
		 * cause of the interrupt.
		 *
		 * Mask off interrupt sources already seen to avoid infinite
		 * loop in case of misconfiguration.
		 */
		cur_enabled = subpriv->enabled_isns;
		while ((intstat = (FUNC5(subpriv->iobase) & subpriv->valid_isns
				   & ~triggered)) != 0) {
			triggered |= intstat;
			cur_enabled &= ~triggered;
			FUNC6(cur_enabled, subpriv->iobase);
		}
	} else {
		/*
		 * No interrupt status register.  Assume the single interrupt
		 * source has triggered.
		 */
		triggered = subpriv->enabled_isns;
	}

	if (triggered) {
		/*
		 * Some interrupt sources have triggered and have been
		 * temporarily disabled to clear the cause of the interrupt.
		 *
		 * Reenable them NOW to minimize the time they are disabled.
		 */
		cur_enabled = subpriv->enabled_isns;
		if (subpriv->has_int_sce) {
			FUNC6(cur_enabled, subpriv->iobase);
		}

		if (subpriv->active) {
			/*
			 * The command is still active.
			 *
			 * Ignore interrupt sources that the command isn't
			 * interested in (just in case there's a race
			 * condition).
			 */
			if (triggered & subpriv->enabled_isns) {
				/* Collect scan data. */
				short val;
				unsigned int n, ch, len;

				val = 0;
				len = s->async->cmd.chanlist_len;
				for (n = 0; n < len; n++) {
					ch = FUNC0(s->async->cmd.chanlist[n]);
					if (triggered & (1U << ch)) {
						val |= (1U << n);
					}
				}
				/* Write the scan to the buffer. */
				if (FUNC1(s->async, val)) {
					s->async->events |= (COMEDI_CB_BLOCK |
							     COMEDI_CB_EOS);
				} else {
					/* Error!  Stop acquisition.  */
					FUNC4(dev, s);
					s->async->events |= COMEDI_CB_ERROR
					    | COMEDI_CB_OVERFLOW;
					FUNC2(dev, "buffer overflow");
				}

				/* Check for end of acquisition. */
				if (!subpriv->continuous) {
					/* stop_src == TRIG_COUNT */
					if (subpriv->stopcount > 0) {
						subpriv->stopcount--;
						if (subpriv->stopcount == 0) {
							s->async->events |=
							    COMEDI_CB_EOA;
							FUNC4(dev,
									 s);
						}
					}
				}
			}
		}
	}
	FUNC8(&subpriv->spinlock, flags);

	if (oldevents != s->async->events) {
		FUNC3(dev, s);
	}

	return (triggered != 0);
}