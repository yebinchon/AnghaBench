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
struct comedi_subdevice {int n_chan; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ AREF_DIFF ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int,unsigned int,scalar_t__,...) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      unsigned int *chanlist, unsigned int n_chan)
{
	unsigned int chansegment[32];
	unsigned int i, nowmustbechan, seglen, segpos;

	FUNC3("adv_pci1710 EDBG:  check_channel_list(...,%d)\n", n_chan);
	/* correct channel and range number check itself comedi/range.c */
	if (n_chan < 1) {
		FUNC4(dev, "range/channel list is empty!");
		return 0;
	}

	if (n_chan > 1) {
		chansegment[0] = chanlist[0];	/*  first channel is everytime ok */
		for (i = 1, seglen = 1; i < n_chan; i++, seglen++) {	/*  build part of chanlist */
			/*  printk("%d. %d %d\n",i,CR_CHAN(chanlist[i]),CR_RANGE(chanlist[i])); */
			if (chanlist[0] == chanlist[i])
				break;	/*  we detect loop, this must by finish */
			if (FUNC1(chanlist[i]) & 1)	/*  odd channel cann't by differencial */
				if (FUNC0(chanlist[i]) == AREF_DIFF) {
					FUNC4(dev,
						     "Odd channel can't be differential input!\n");
					return 0;
				}
			nowmustbechan =
			    (FUNC1(chansegment[i - 1]) + 1) % s->n_chan;
			if (FUNC0(chansegment[i - 1]) == AREF_DIFF)
				nowmustbechan = (nowmustbechan + 1) % s->n_chan;
			if (nowmustbechan != FUNC1(chanlist[i])) {	/*  channel list isn't continous :-( */
				FUNC5
				    ("channel list must be continous! chanlist[%i]=%d but must be %d or %d!\n",
				     i, FUNC1(chanlist[i]), nowmustbechan,
				     FUNC1(chanlist[0]));
				return 0;
			}
			chansegment[i] = chanlist[i];	/*  well, this is next correct channel in list */
		}

		for (i = 0, segpos = 0; i < n_chan; i++) {	/*  check whole chanlist */
			/* printk("%d %d=%d %d\n",CR_CHAN(chansegment[i%seglen]),CR_RANGE(chansegment[i%seglen]),CR_CHAN(chanlist[i]),CR_RANGE(chanlist[i])); */
			if (chanlist[i] != chansegment[i % seglen]) {
				FUNC5
				    ("bad channel, reference or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
				     i, FUNC1(chansegment[i]),
				     FUNC2(chansegment[i]),
				     FUNC0(chansegment[i]),
				     FUNC1(chanlist[i % seglen]),
				     FUNC2(chanlist[i % seglen]),
				     FUNC0(chansegment[i % seglen]));
				return 0;	/*  chan/gain list is strange */
			}
		}
	} else {
		seglen = 1;
	}
	return seglen;
}