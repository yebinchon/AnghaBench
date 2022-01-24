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
struct TYPE_2__ {unsigned int* eeprom_data; int command5_bits; int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ COMMAND5_REG ; 
 int EEPROM_EN_BIT ; 
 int EEPROM_WRITE_UNPROTECT_BIT ; 
 unsigned int ETIME ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int const FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static unsigned int FUNC10(struct comedi_device *dev,
				       unsigned int address, unsigned int value)
{
	const int write_enable_instruction = 0x6;
	const int write_instruction = 0x2;
	const int write_length = 8;	/*  8 bit write lengths to eeprom */
	const int write_in_progress_bit = 0x1;
	const int timeout = 10000;
	int i;

	/*  make sure there isn't already a write in progress */
	for (i = 0; i < timeout; i++) {
		if ((FUNC1(dev) & write_in_progress_bit) ==
		    0)
			break;
	}
	if (i == timeout) {
		FUNC0(dev, "eeprom write timed out");
		return -ETIME;
	}
	/*  update software copy of eeprom */
	devpriv->eeprom_data[address] = value;

	/*  enable read/write to eeprom */
	devpriv->command5_bits &= ~EEPROM_EN_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
	devpriv->command5_bits |= EEPROM_EN_BIT | EEPROM_WRITE_UNPROTECT_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	/*  send write_enable instruction */
	FUNC2(dev, write_enable_instruction, write_length);
	devpriv->command5_bits &= ~EEPROM_EN_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	/*  send write instruction */
	devpriv->command5_bits |= EEPROM_EN_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
	FUNC2(dev, write_instruction, write_length);
	/*  send 8 bit address to write to */
	FUNC2(dev, address, write_length);
	/*  write value */
	FUNC2(dev, value, write_length);
	devpriv->command5_bits &= ~EEPROM_EN_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	/*  disable read/write to eeprom */
	devpriv->command5_bits &= ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
	FUNC9(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	return 0;
}