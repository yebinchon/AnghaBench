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
struct TYPE_4__ {scalar_t__ usefifo; } ;
struct TYPE_3__ {scalar_t__ is_818; } ;

/* Variables and functions */
 scalar_t__ PCL718_DA2_HI ; 
 scalar_t__ PCL718_DA2_LO ; 
 scalar_t__ PCL818_CLRINT ; 
 scalar_t__ PCL818_CNTENABLE ; 
 scalar_t__ PCL818_CONTROL ; 
 scalar_t__ PCL818_CTRCTL ; 
 scalar_t__ PCL818_DA_HI ; 
 scalar_t__ PCL818_DA_LO ; 
 scalar_t__ PCL818_DO_HI ; 
 scalar_t__ PCL818_DO_LO ; 
 scalar_t__ PCL818_FI_ENABLE ; 
 scalar_t__ PCL818_FI_FLUSH ; 
 scalar_t__ PCL818_FI_INTCLR ; 
 scalar_t__ PCL818_MUX ; 
 scalar_t__ PCL818_RANGE ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 TYPE_1__* this_board ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{
	if (devpriv->usefifo) {	/*  FIFO shutdown */
		FUNC0(0, dev->iobase + PCL818_FI_INTCLR);
		FUNC0(0, dev->iobase + PCL818_FI_FLUSH);
		FUNC0(0, dev->iobase + PCL818_FI_ENABLE);
	}
	FUNC0(0, dev->iobase + PCL818_DA_LO);	/*  DAC=0V */
	FUNC0(0, dev->iobase + PCL818_DA_HI);
	FUNC1(1);
	FUNC0(0, dev->iobase + PCL818_DO_HI);	/*  DO=$0000 */
	FUNC0(0, dev->iobase + PCL818_DO_LO);
	FUNC1(1);
	FUNC0(0, dev->iobase + PCL818_CONTROL);
	FUNC0(0, dev->iobase + PCL818_CNTENABLE);
	FUNC0(0, dev->iobase + PCL818_MUX);
	FUNC0(0, dev->iobase + PCL818_CLRINT);
	FUNC0(0xb0, dev->iobase + PCL818_CTRCTL);	/* Stop pacer */
	FUNC0(0x70, dev->iobase + PCL818_CTRCTL);
	FUNC0(0x30, dev->iobase + PCL818_CTRCTL);
	if (this_board->is_818) {
		FUNC0(0, dev->iobase + PCL818_RANGE);
	} else {
		FUNC0(0, dev->iobase + PCL718_DA2_LO);
		FUNC0(0, dev->iobase + PCL718_DA2_HI);
	}
}