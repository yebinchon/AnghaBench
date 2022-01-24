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
struct comedi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_ADC_Config_Data_High_Word_67xx ; 
 int /*<<< orphan*/  CAL_ADC_Config_Data_Low_Word_67xx ; 
 unsigned int CSCMD_COMMAND ; 
 unsigned int CSCMD_REGISTER_SELECT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,unsigned int) ; 
 scalar_t__ FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, unsigned int value,
				unsigned int reg_select_bits)
{
	FUNC3(dev, ((value >> 16) & 0xff),
		       CAL_ADC_Config_Data_High_Word_67xx);
	FUNC3(dev, (value & 0xffff),
		       CAL_ADC_Config_Data_Low_Word_67xx);
	reg_select_bits &= CSCMD_REGISTER_SELECT_MASK;
	FUNC1(dev, CSCMD_COMMAND | reg_select_bits);
	if (FUNC2(dev))
		FUNC0(dev, "time or signal in cs5529_config_write()");
}