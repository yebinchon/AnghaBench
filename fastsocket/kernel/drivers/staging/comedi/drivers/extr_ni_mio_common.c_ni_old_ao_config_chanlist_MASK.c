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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int dummy; } ;
struct TYPE_4__ {int aobits; scalar_t__ ao_unipolar; } ;
struct TYPE_3__ {unsigned int* ao_conf; } ;

/* Variables and functions */
 unsigned int AO_Bipolar ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  AO_Configuration ; 
 unsigned int AO_Deglitch ; 
 unsigned int AO_Ext_Ref ; 
 unsigned int AO_Ground_Ref ; 
 scalar_t__ AREF_OTHER ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int CR_DEGLITCH ; 
 unsigned int FUNC3 (unsigned int) ; 
 TYPE_2__ boardtype ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     unsigned int chanspec[],
				     unsigned int n_chans)
{
	unsigned int range;
	unsigned int chan;
	unsigned int conf;
	int i;
	int invert = 0;

	for (i = 0; i < n_chans; i++) {
		chan = FUNC2(chanspec[i]);
		range = FUNC3(chanspec[i]);
		conf = FUNC0(chan);

		if (boardtype.ao_unipolar) {
			if ((range & 1) == 0) {
				conf |= AO_Bipolar;
				invert = (1 << (boardtype.aobits - 1));
			} else {
				invert = 0;
			}
			if (range & 2)
				conf |= AO_Ext_Ref;
		} else {
			conf |= AO_Bipolar;
			invert = (1 << (boardtype.aobits - 1));
		}

		/* not all boards can deglitch, but this shouldn't hurt */
		if (chanspec[i] & CR_DEGLITCH)
			conf |= AO_Deglitch;

		/* analog reference */
		/* AREF_OTHER connects AO ground to AI ground, i think */
		conf |= (FUNC1(chanspec[i]) ==
			 AREF_OTHER) ? AO_Ground_Ref : 0;

		FUNC4(conf, AO_Configuration);
		devpriv->ao_conf[chan] = conf;
	}
	return invert;
}