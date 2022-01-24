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
typedef  int uint32_t ;
struct comedi_device {int dummy; } ;
struct comedi_cmd {int dummy; } ;
struct TYPE_4__ {scalar_t__ layout; } ;
struct TYPE_3__ {scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ ADC_DELAY_INTERVAL_LOWER_REG ; 
 scalar_t__ ADC_DELAY_INTERVAL_UPPER_REG ; 
 scalar_t__ ADC_SAMPLE_INTERVAL_LOWER_REG ; 
 scalar_t__ ADC_SAMPLE_INTERVAL_UPPER_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ LAYOUT_4020 ; 
 int FUNC1 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC2 (struct comedi_device*,struct comedi_cmd*) ; 
 int FUNC3 (struct comedi_device*,struct comedi_cmd*) ; 
 TYPE_2__* FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_cmd*) ; 
 TYPE_1__* FUNC6 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev, struct comedi_cmd *cmd)
{
	uint32_t convert_counter = 0, scan_counter = 0;

	FUNC5(dev, cmd);

	FUNC7(dev, cmd);

	if (FUNC4(dev)->layout == LAYOUT_4020) {
		convert_counter = FUNC1(dev, cmd);
	} else {
		convert_counter = FUNC2(dev, cmd);
		scan_counter = FUNC3(dev, cmd);
	}

	/*  load lower 16 bits of convert interval */
	FUNC8(convert_counter & 0xffff,
	       FUNC6(dev)->main_iobase + ADC_SAMPLE_INTERVAL_LOWER_REG);
	FUNC0("convert counter 0x%x\n", convert_counter);
	/*  load upper 8 bits of convert interval */
	FUNC8((convert_counter >> 16) & 0xff,
	       FUNC6(dev)->main_iobase + ADC_SAMPLE_INTERVAL_UPPER_REG);
	/*  load lower 16 bits of scan delay */
	FUNC8(scan_counter & 0xffff,
	       FUNC6(dev)->main_iobase + ADC_DELAY_INTERVAL_LOWER_REG);
	/*  load upper 8 bits of scan delay */
	FUNC8((scan_counter >> 16) & 0xff,
	       FUNC6(dev)->main_iobase + ADC_DELAY_INTERVAL_UPPER_REG);
	FUNC0("scan counter 0x%x\n", scan_counter);
}