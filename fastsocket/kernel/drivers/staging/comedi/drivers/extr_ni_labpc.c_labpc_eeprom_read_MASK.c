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
struct TYPE_2__ {int command5_bits; int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ COMMAND5_REG ; 
 int EEPROM_EN_BIT ; 
 int EEPROM_WRITE_UNPROTECT_BIT ; 
 TYPE_1__* devpriv ; 
 unsigned int FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned int FUNC6(struct comedi_device *dev,
				      unsigned int address)
{
	unsigned int value;
	const int read_instruction = 0x3;	/*  bits to tell eeprom to expect a read */
	const int write_length = 8;	/*  8 bit write lengths to eeprom */

	/*  enable read/write to eeprom */
	devpriv->command5_bits &= ~EEPROM_EN_BIT;
	FUNC5(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
	devpriv->command5_bits |= EEPROM_EN_BIT | EEPROM_WRITE_UNPROTECT_BIT;
	FUNC5(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	/*  send read instruction */
	FUNC1(dev, read_instruction, write_length);
	/*  send 8 bit address to read from */
	FUNC1(dev, address, write_length);
	/*  read result */
	value = FUNC0(dev);

	/*  disable read/write to eeprom */
	devpriv->command5_bits &= ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
	FUNC5(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	return value;
}