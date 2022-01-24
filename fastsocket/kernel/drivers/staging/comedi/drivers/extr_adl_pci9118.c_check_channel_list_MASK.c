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
struct comedi_subdevice {int len_chanlist; } ;
struct comedi_device {int /*<<< orphan*/  minor; } ;
typedef  int differencial ;
struct TYPE_4__ {int /*<<< orphan*/  usemux; } ;
struct TYPE_3__ {scalar_t__ n_aichand; } ;

/* Variables and functions */
 scalar_t__ AREF_DIFF ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 scalar_t__ PCI9118_BIPOLAR_RANGES ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,char*) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
			      struct comedi_subdevice *s, int n_chan,
			      unsigned int *chanlist, int frontadd, int backadd)
{
	unsigned int i, differencial = 0, bipolar = 0;

	/* correct channel and range number check itself comedi/range.c */
	if (n_chan < 1) {
		FUNC3(dev, "range/channel list is empty!");
		return 0;
	}
	if ((frontadd + n_chan + backadd) > s->len_chanlist) {
		FUNC4
		    ("comedi%d: range/channel list is too long for actual configuration (%d>%d)!",
		     dev->minor, n_chan, s->len_chanlist - frontadd - backadd);
		return 0;
	}

	if (FUNC0(chanlist[0]) == AREF_DIFF)
		differencial = 1;	/*  all input must be diff */
	if (FUNC2(chanlist[0]) < PCI9118_BIPOLAR_RANGES)
		bipolar = 1;	/*  all input must be bipolar */
	if (n_chan > 1)
		for (i = 1; i < n_chan; i++) {	/*  check S.E/diff */
			if ((FUNC0(chanlist[i]) == AREF_DIFF) !=
			    (differencial)) {
				FUNC3(dev,
					     "Differencial and single ended inputs cann't be mixtured!");
				return 0;
			}
			if ((FUNC2(chanlist[i]) < PCI9118_BIPOLAR_RANGES) !=
			    (bipolar)) {
				FUNC3(dev,
					     "Bipolar and unipolar ranges cann't be mixtured!");
				return 0;
			}
			if ((!devpriv->usemux) & (differencial) &
			    (FUNC1(chanlist[i]) >= this_board->n_aichand)) {
				FUNC3(dev,
					     "If AREF_DIFF is used then is available only first 8 channels!");
				return 0;
			}
		}

	return 1;
}