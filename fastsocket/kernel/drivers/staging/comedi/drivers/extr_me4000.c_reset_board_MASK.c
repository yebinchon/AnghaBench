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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ me4000_regbase; scalar_t__ plx_regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ME4000_AI_CTRL_BIT_IMMEDIATE_STOP ; 
 int ME4000_AI_CTRL_BIT_STOP ; 
 scalar_t__ ME4000_AI_CTRL_REG ; 
 scalar_t__ ME4000_AO_00_CTRL_REG ; 
 scalar_t__ ME4000_AO_00_SINGLE_REG ; 
 scalar_t__ ME4000_AO_01_CTRL_REG ; 
 scalar_t__ ME4000_AO_01_SINGLE_REG ; 
 scalar_t__ ME4000_AO_02_CTRL_REG ; 
 scalar_t__ ME4000_AO_02_SINGLE_REG ; 
 scalar_t__ ME4000_AO_03_CTRL_REG ; 
 scalar_t__ ME4000_AO_03_SINGLE_REG ; 
 int ME4000_AO_CTRL_BIT_IMMEDIATE_STOP ; 
 int ME4000_AO_CTRL_BIT_STOP ; 
 scalar_t__ ME4000_AO_DEMUX_ADJUST_REG ; 
 int ME4000_AO_DEMUX_ADJUST_VALUE ; 
 scalar_t__ ME4000_DIO_CTRL_REG ; 
 scalar_t__ ME4000_DIO_DIR_REG ; 
 scalar_t__ PLX_ICR ; 
 scalar_t__ PLX_INTCSR ; 
 TYPE_1__* info ; 
 int FUNC1 (struct comedi_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	unsigned long icr;

	FUNC0("In reset_board()\n");

	/* Make a hardware reset */
	icr = FUNC1(dev, info->plx_regbase + PLX_ICR);
	icr |= 0x40000000;
	FUNC2(dev, icr, info->plx_regbase + PLX_ICR);
	icr &= ~0x40000000;
	FUNC2(dev, icr, info->plx_regbase + PLX_ICR);

	/* 0x8000 to the DACs means an output voltage of 0V */
	FUNC2(dev, 0x8000,
		    info->me4000_regbase + ME4000_AO_00_SINGLE_REG);
	FUNC2(dev, 0x8000,
		    info->me4000_regbase + ME4000_AO_01_SINGLE_REG);
	FUNC2(dev, 0x8000,
		    info->me4000_regbase + ME4000_AO_02_SINGLE_REG);
	FUNC2(dev, 0x8000,
		    info->me4000_regbase + ME4000_AO_03_SINGLE_REG);

	/* Set both stop bits in the analog input control register */
	FUNC2(dev,
		    ME4000_AI_CTRL_BIT_IMMEDIATE_STOP | ME4000_AI_CTRL_BIT_STOP,
		    info->me4000_regbase + ME4000_AI_CTRL_REG);

	/* Set both stop bits in the analog output control register */
	FUNC2(dev,
		    ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
		    info->me4000_regbase + ME4000_AO_00_CTRL_REG);
	FUNC2(dev,
		    ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
		    info->me4000_regbase + ME4000_AO_01_CTRL_REG);
	FUNC2(dev,
		    ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
		    info->me4000_regbase + ME4000_AO_02_CTRL_REG);
	FUNC2(dev,
		    ME4000_AO_CTRL_BIT_IMMEDIATE_STOP | ME4000_AO_CTRL_BIT_STOP,
		    info->me4000_regbase + ME4000_AO_03_CTRL_REG);

	/* Enable interrupts on the PLX */
	FUNC2(dev, 0x43, info->plx_regbase + PLX_INTCSR);

	/* Set the adustment register for AO demux */
	FUNC2(dev, ME4000_AO_DEMUX_ADJUST_VALUE,
		    info->me4000_regbase + ME4000_AO_DEMUX_ADJUST_REG);

	/* Set digital I/O direction for port 0 to output on isolated versions */
	if (!(FUNC1(dev, info->me4000_regbase + ME4000_DIO_DIR_REG) & 0x1)) {
		FUNC2(dev, 0x1,
			    info->me4000_regbase + ME4000_DIO_CTRL_REG);
	}

	return 0;
}