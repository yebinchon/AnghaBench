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
struct comedi_device {int /*<<< orphan*/  minor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,...) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s,
			      unsigned int *chanlist, unsigned int n_chan)
{
	unsigned int chansegment[16];
	unsigned int i, nowmustbechan, seglen, segpos;

	/* correct channel and range number check itself comedi/range.c */
	if (n_chan < 1) {
		FUNC3(dev, "range/channel list is empty!");
		return 0;
	}

	if (n_chan > 1) {
		/*  first channel is everytime ok */
		chansegment[0] = chanlist[0];
		/*  build part of chanlist */
		for (i = 1, seglen = 1; i < n_chan; i++, seglen++) {

			/* printk("%d. %d * %d\n",i,
			 * CR_CHAN(it->chanlist[i]),CR_RANGE(it->chanlist[i]));*/

			/* we detect loop, this must by finish */

			if (chanlist[0] == chanlist[i])
				break;
			nowmustbechan =
			    (FUNC1(chansegment[i - 1]) + 1) % s->n_chan;
			if (nowmustbechan != FUNC1(chanlist[i])) {	/*  channel list isn't continous :-( */
				FUNC4
				    ("comedi%d: pcl818: channel list must be continous! chanlist[%i]=%d but must be %d or %d!\n",
				     dev->minor, i, FUNC1(chanlist[i]),
				     nowmustbechan, FUNC1(chanlist[0]));
				return 0;
			}
			/*  well, this is next correct channel in list */
			chansegment[i] = chanlist[i];
		}

		/*  check whole chanlist */
		for (i = 0, segpos = 0; i < n_chan; i++) {
			/* printk("%d %d=%d %d\n",CR_CHAN(chansegment[i%seglen]),CR_RANGE(chansegment[i%seglen]),CR_CHAN(it->chanlist[i]),CR_RANGE(it->chanlist[i])); */
			if (chanlist[i] != chansegment[i % seglen]) {
				FUNC4
				    ("comedi%d: pcl818: bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\n",
				     dev->minor, i, FUNC1(chansegment[i]),
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
	FUNC4("check_channel_list: seglen %d\n", seglen);
	return seglen;
}