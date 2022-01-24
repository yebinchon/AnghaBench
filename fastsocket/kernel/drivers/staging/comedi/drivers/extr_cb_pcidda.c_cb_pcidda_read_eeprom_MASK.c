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
struct TYPE_2__ {scalar_t__ dac; } ;

/* Variables and functions */
 scalar_t__ DACALIBRATION2 ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int DESELECT_REF_DAC_BIT ; 
 unsigned int DUMMY_BIT ; 
 unsigned int SELECT_EEPROM_BIT ; 
 unsigned int FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int const,int const) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC4(struct comedi_device *dev,
					  unsigned int address)
{
	unsigned int i;
	unsigned int cal2_bits;
	unsigned int value;
	const int max_num_caldacs = 4;	/*  one caldac for every two dac channels */
	const int read_instruction = 0x6;	/*  bits to send to tell eeprom we want to read */
	const int instruction_length = 3;
	const int address_length = 8;

	/*  send serial output stream to eeprom */
	cal2_bits = SELECT_EEPROM_BIT | DESELECT_REF_DAC_BIT | DUMMY_BIT;
	/*  deactivate caldacs (one caldac for every two channels) */
	for (i = 0; i < max_num_caldacs; i++) {
		cal2_bits |= FUNC0(i);
	}
	FUNC3(cal2_bits, devpriv->dac + DACALIBRATION2);

	/*  tell eeprom we want to read */
	FUNC2(dev, read_instruction, instruction_length);
	/*  send address we want to read from */
	FUNC2(dev, address, address_length);

	value = FUNC1(dev);

	/*  deactivate eeprom */
	cal2_bits &= ~SELECT_EEPROM_BIT;
	FUNC3(cal2_bits, devpriv->dac + DACALIBRATION2);

	return value;
}