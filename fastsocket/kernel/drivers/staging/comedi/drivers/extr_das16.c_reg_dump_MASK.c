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
struct comedi_device {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ DAS1600_BURST ; 
 scalar_t__ DAS1600_CONV ; 
 scalar_t__ DAS1600_ENABLE ; 
 scalar_t__ DAS1600_STATUS_B ; 
 scalar_t__ DAS16_CNTR_CONTROL ; 
 scalar_t__ DAS16_CONTROL ; 
 scalar_t__ DAS16_DIO ; 
 scalar_t__ DAS16_GAIN ; 
 scalar_t__ DAS16_MUX ; 
 scalar_t__ DAS16_PACER ; 
 scalar_t__ DAS16_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct comedi_device *dev)
{
	FUNC0("********DAS1600 REGISTER DUMP********\n");
	FUNC0("DAS16_MUX: %x\n", FUNC1(dev->iobase + DAS16_MUX));
	FUNC0("DAS16_DIO: %x\n", FUNC1(dev->iobase + DAS16_DIO));
	FUNC0("DAS16_STATUS: %x\n", FUNC1(dev->iobase + DAS16_STATUS));
	FUNC0("DAS16_CONTROL: %x\n", FUNC1(dev->iobase + DAS16_CONTROL));
	FUNC0("DAS16_PACER: %x\n", FUNC1(dev->iobase + DAS16_PACER));
	FUNC0("DAS16_GAIN: %x\n", FUNC1(dev->iobase + DAS16_GAIN));
	FUNC0("DAS16_CNTR_CONTROL: %x\n",
		    FUNC1(dev->iobase + DAS16_CNTR_CONTROL));
	FUNC0("DAS1600_CONV: %x\n", FUNC1(dev->iobase + DAS1600_CONV));
	FUNC0("DAS1600_BURST: %x\n", FUNC1(dev->iobase + DAS1600_BURST));
	FUNC0("DAS1600_ENABLE: %x\n", FUNC1(dev->iobase + DAS1600_ENABLE));
	FUNC0("DAS1600_STATUS_B: %x\n",
		    FUNC1(dev->iobase + DAS1600_STATUS_B));
}