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
typedef  enum cris_io_interface { ____Placeholder_cris_io_interface } cris_io_interface ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EINVAL ; 
 unsigned int FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int gpio_in_pins ; 
 unsigned int gpio_out_pins ; 
 int* gpio_pa_owners ; 
 unsigned int gpio_pa_pins ; 
 int* gpio_pb_owners ; 
 unsigned int gpio_pb_pins ; 
 int* gpio_pg_owners ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char const,unsigned int const,unsigned int const,unsigned int const) ; 

int FUNC7(const enum cris_io_interface ioif,
				    const char port,
				    const unsigned start_bit,
				    const unsigned stop_bit)
{
	unsigned int i;
	unsigned int mask = 0;
	unsigned int tmp_mask;
	unsigned long int flags;
	enum cris_io_interface *owners;

	(void)FUNC2();

	FUNC0(FUNC6("cris_io_interface_allocate_pins: if=%d port=%c start=%u stop=%u\n",
		   ioif, port, start_bit, stop_bit));

	if (!((start_bit <= stop_bit) &&
	      ((((port == 'a') || (port == 'b')) && (stop_bit < 8)) ||
	       ((port == 'g') && (stop_bit < 32))))) {
		return -EINVAL;
	}

	mask = FUNC1(stop_bit + 1);
	tmp_mask = FUNC1(start_bit);
	mask &= ~tmp_mask;

	FUNC0(FUNC6("cris_io_interface_allocate_pins: port=%c start=%u stop=%u mask=0x%08x\n",
		   port, start_bit, stop_bit, mask));

	FUNC4(flags);

	switch (port) {
	case 'a':
		if ((gpio_pa_pins & mask) != mask) {
			FUNC3(flags);
			return -EBUSY;
		}
		owners = gpio_pa_owners;
		gpio_pa_pins &= ~mask;
		break;
	case 'b':
		if ((gpio_pb_pins & mask) != mask) {
			FUNC3(flags);
			return -EBUSY;
		}
		owners = gpio_pb_owners;
		gpio_pb_pins &= ~mask;
		break;
	case 'g':
		if (((gpio_in_pins & mask) != mask) ||
		    ((gpio_out_pins & mask) != mask)) {
			FUNC3(flags);
			return -EBUSY;
		}
		owners = gpio_pg_owners;
		gpio_in_pins &= ~mask;
		gpio_out_pins &= ~mask;
		break;
	default:
		FUNC3(flags);
		return -EINVAL;
	}

	for (i = start_bit; i <= stop_bit; i++) {
		owners[i] = ioif;
	}
	FUNC3(flags);

	FUNC5();
	return 0;
}