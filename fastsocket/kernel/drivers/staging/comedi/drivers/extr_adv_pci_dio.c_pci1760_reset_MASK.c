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
struct TYPE_2__ {int* CntMatchValue; int* CntResValue; int IDICntEdge; int IDIFiltersEn; int IDIPatMatchEn; int IDIPatMatchValue; scalar_t__ IDICntMatchEnable; scalar_t__ IDICntOverEnable; scalar_t__ IDICntEnable; scalar_t__ GlobalIrqEnabled; } ;

/* Variables and functions */
 unsigned char CMD_EdgeIDICounters ; 
 unsigned char CMD_EnableIDICounters ; 
 unsigned char CMD_EnableIDIFilters ; 
 unsigned char CMD_EnableIDIPatternMatch ; 
 unsigned char CMD_MatchIntIDICounters ; 
 unsigned char CMD_OverflowIDICounters ; 
 unsigned char CMD_ResetIDICounters ; 
 int CMD_SetIDI0CntMatchValue ; 
 int CMD_SetIDI0CntResetValue ; 
 unsigned char CMD_SetIDIPatternMatch ; 
 unsigned char CMD_SetRelaysOutput ; 
 scalar_t__ INTCSR0 ; 
 scalar_t__ INTCSR1 ; 
 scalar_t__ INTCSR2 ; 
 scalar_t__ INTCSR3 ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	int i;
	unsigned char omb[4] = { 0x00, 0x00, 0x00, 0x00 };
	unsigned char imb[4];

	FUNC0(0, dev->iobase + INTCSR0);	/*  disable IRQ */
	FUNC0(0, dev->iobase + INTCSR1);
	FUNC0(0, dev->iobase + INTCSR2);
	FUNC0(0, dev->iobase + INTCSR3);
	devpriv->GlobalIrqEnabled = 0;

	omb[0] = 0x00;
	omb[2] = CMD_SetRelaysOutput;	/*  reset relay outputs */
	FUNC1(dev, omb, imb);

	omb[0] = 0x00;
	omb[2] = CMD_EnableIDICounters;	/*  disable IDI up counters */
	FUNC1(dev, omb, imb);
	devpriv->IDICntEnable = 0;

	omb[0] = 0x00;
	omb[2] = CMD_OverflowIDICounters;	/*  disable counters overflow interrupts */
	FUNC1(dev, omb, imb);
	devpriv->IDICntOverEnable = 0;

	omb[0] = 0x00;
	omb[2] = CMD_MatchIntIDICounters;	/*  disable counters match value interrupts */
	FUNC1(dev, omb, imb);
	devpriv->IDICntMatchEnable = 0;

	omb[0] = 0x00;
	omb[1] = 0x80;
	for (i = 0; i < 8; i++) {	/*  set IDI up counters match value */
		omb[2] = CMD_SetIDI0CntMatchValue + i;
		FUNC1(dev, omb, imb);
		devpriv->CntMatchValue[i] = 0x8000;
	}

	omb[0] = 0x00;
	omb[1] = 0x00;
	for (i = 0; i < 8; i++) {	/*  set IDI up counters reset value */
		omb[2] = CMD_SetIDI0CntResetValue + i;
		FUNC1(dev, omb, imb);
		devpriv->CntResValue[i] = 0x0000;
	}

	omb[0] = 0xff;
	omb[2] = CMD_ResetIDICounters;	/*  reset IDI up counters to reset values */
	FUNC1(dev, omb, imb);

	omb[0] = 0x00;
	omb[2] = CMD_EdgeIDICounters;	/*  set IDI up counters count edge */
	FUNC1(dev, omb, imb);
	devpriv->IDICntEdge = 0x00;

	omb[0] = 0x00;
	omb[2] = CMD_EnableIDIFilters;	/*  disable all digital in filters */
	FUNC1(dev, omb, imb);
	devpriv->IDIFiltersEn = 0x00;

	omb[0] = 0x00;
	omb[2] = CMD_EnableIDIPatternMatch;	/*  disable pattern matching */
	FUNC1(dev, omb, imb);
	devpriv->IDIPatMatchEn = 0x00;

	omb[0] = 0x00;
	omb[2] = CMD_SetIDIPatternMatch;	/*  set pattern match value */
	FUNC1(dev, omb, imb);
	devpriv->IDIPatMatchValue = 0x00;

	return 0;
}