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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ is_8112; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ PCL711_GAIN ; 
 scalar_t__ PCL711_MUX ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, int chan)
{
	int chan_register;

	FUNC2(FUNC1(chan), dev->iobase + PCL711_GAIN);

	chan_register = FUNC0(chan);

	if (this_board->is_8112) {

		/*
		 *  Set the correct channel.  The two channel banks are switched
		 *  using the mask value.
		 *  NB: To use differential channels, you should use mask = 0x30,
		 *  but I haven't written the support for this yet. /JJ
		 */

		if (chan_register >= 8) {
			chan_register = 0x20 | (chan_register & 0x7);
		} else {
			chan_register |= 0x10;
		}
	} else {
		FUNC2(chan_register, dev->iobase + PCL711_MUX);
	}
}