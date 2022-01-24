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
struct comedi_device {scalar_t__ iobase; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_4__ {int ai_unipolar; int ai_singleended; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 scalar_t__ DAS16_DIO ; 
 int DAS16_MUXBIT ; 
 scalar_t__ DAS16_STATUS ; 
 int UNIPOLAR ; 
 TYPE_2__* devpriv ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, struct comedi_devconfig *it)
{
	int status;
	int diobits;

	/* status is available on all boards */

	status = FUNC0(dev->iobase + DAS16_STATUS);

	if ((status & UNIPOLAR)) {
		devpriv->ai_unipolar = 1;
	} else {
		devpriv->ai_unipolar = 0;
	}

	if ((status & DAS16_MUXBIT)) {
		devpriv->ai_singleended = 1;
	} else {
		devpriv->ai_singleended = 0;
	}

	/* diobits indicates boards */

	diobits = FUNC0(dev->iobase + DAS16_DIO) & 0xf0;

	FUNC1(" id bits are 0x%02x\n", diobits);
	if (thisboard->id != diobits) {
		FUNC1(" requested board's id bits are 0x%x (ignore)\n",
		       thisboard->id);
	}

	return 0;
}