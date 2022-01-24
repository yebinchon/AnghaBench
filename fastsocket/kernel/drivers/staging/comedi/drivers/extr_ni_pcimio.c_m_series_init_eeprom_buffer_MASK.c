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
struct comedi_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mite; void** eeprom_buffer; scalar_t__ serial_number; } ;
struct TYPE_3__ {int daq_phys_addr; scalar_t__ mite_io_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MITE_IODWBSR ; 
 scalar_t__ MITE_IODWBSR_1 ; 
 scalar_t__ MITE_IODWCR_1 ; 
 int M_SERIES_EEPROM_SIZE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 TYPE_2__* devpriv ; 
 void* FUNC2 (int const) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	static const int Start_Cal_EEPROM = 0x400;
	static const unsigned window_size = 10;
	static const int serial_number_eeprom_offset = 0x4;
	static const int serial_number_eeprom_length = 0x4;
	unsigned old_iodwbsr_bits;
	unsigned old_iodwbsr1_bits;
	unsigned old_iodwcr1_bits;
	int i;

	old_iodwbsr_bits = FUNC3(devpriv->mite->mite_io_addr + MITE_IODWBSR);
	old_iodwbsr1_bits = FUNC3(devpriv->mite->mite_io_addr + MITE_IODWBSR_1);
	old_iodwcr1_bits = FUNC3(devpriv->mite->mite_io_addr + MITE_IODWCR_1);
	FUNC4(0x0, devpriv->mite->mite_io_addr + MITE_IODWBSR);
	FUNC4(((0x80 | window_size) | devpriv->mite->daq_phys_addr),
	       devpriv->mite->mite_io_addr + MITE_IODWBSR_1);
	FUNC4(0x1 | old_iodwcr1_bits,
	       devpriv->mite->mite_io_addr + MITE_IODWCR_1);
	FUNC4(0xf, devpriv->mite->mite_io_addr + 0x30);

	FUNC0(serial_number_eeprom_length > sizeof(devpriv->serial_number));
	for (i = 0; i < serial_number_eeprom_length; ++i) {
		char *byte_ptr = (char *)&devpriv->serial_number + i;
		*byte_ptr = FUNC2(serial_number_eeprom_offset + i);
	}
	devpriv->serial_number = FUNC1(devpriv->serial_number);

	for (i = 0; i < M_SERIES_EEPROM_SIZE; ++i) {
		devpriv->eeprom_buffer[i] = FUNC2(Start_Cal_EEPROM + i);
	}

	FUNC4(old_iodwbsr1_bits, devpriv->mite->mite_io_addr + MITE_IODWBSR_1);
	FUNC4(old_iodwbsr_bits, devpriv->mite->mite_io_addr + MITE_IODWBSR);
	FUNC4(old_iodwcr1_bits, devpriv->mite->mite_io_addr + MITE_IODWCR_1);
	FUNC4(0x0, devpriv->mite->mite_io_addr + 0x30);
}