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
struct TYPE_2__ {unsigned int* caldac; int command5_bits; int /*<<< orphan*/  (* write_byte ) (int,scalar_t__) ;} ;

/* Variables and functions */
 int CALDAC_LOAD_BIT ; 
 scalar_t__ COMMAND5_REG ; 
 int EEPROM_EN_BIT ; 
 int EEPROM_WRITE_UNPROTECT_BIT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, unsigned int channel,
			 unsigned int value)
{
	if (value == devpriv->caldac[channel])
		return;
	devpriv->caldac[channel] = value;

	/*  clear caldac load bit and make sure we don't write to eeprom */
	devpriv->command5_bits &=
	    ~CALDAC_LOAD_BIT & ~EEPROM_EN_BIT & ~EEPROM_WRITE_UNPROTECT_BIT;
	FUNC4(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);

	/*  write 4 bit channel */
	FUNC0(dev, channel, 4);
	/*  write 8 bit caldac value */
	FUNC0(dev, value, 8);

	/*  set and clear caldac bit to load caldac value */
	devpriv->command5_bits |= CALDAC_LOAD_BIT;
	FUNC4(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
	devpriv->command5_bits &= ~CALDAC_LOAD_BIT;
	FUNC4(1);
	devpriv->write_byte(devpriv->command5_bits, dev->iobase + COMMAND5_REG);
}