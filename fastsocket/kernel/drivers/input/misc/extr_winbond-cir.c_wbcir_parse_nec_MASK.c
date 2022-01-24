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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct wbcir_data {int last_scancode; int last_toggle; scalar_t__ irdata_error; int /*<<< orphan*/  keypressed; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 scalar_t__ FUNC2 (struct wbcir_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wbcir_data*,int,int) ; 

__attribute__((used)) static void
FUNC4(struct device *dev, struct wbcir_data *data)
{
	/*
	 * Each bit represents 560 us.
	 *
	 * Leader		- 9 ms burst
	 * Gap			- 4.5 ms silence
	 * Address1 bit 0 - 7	- Address 1
	 * Address2 bit 0 - 7	- Address 2
	 * Command1 bit 0 - 7	- Command 1
	 * Command2 bit 0 - 7	- Command 2
	 *
	 * Note the bit order!
	 *
	 * With the old NEC protocol, Address2 was the inverse of Address1
	 * and Command2 was the inverse of Command1 and were used as
	 * an error check.
	 *
	 * With NEC extended, Address1 is the LSB of the Address and
	 * Address2 is the MSB, Command parsing remains unchanged.
	 *
	 * A repeat message is coded as:
	 * Leader		- 9 ms burst
	 * Gap			- 2.25 ms silence
	 * Repeat		- 560 us active
	 */
	u8 address1;
	u8 address2;
	u8 command1;
	u8 command2;
	u16 address;
	u32 scancode;

	/* Leader mark */
	while (FUNC2(data, 1) && !data->irdata_error)
		/* Do nothing */;

	/* Leader space */
	if (FUNC2(data, 4)) {
		FUNC1(dev, "NEC - Invalid leader space\n");
		return;
	}

	/* Repeat? */
	if (FUNC2(data, 1)) {
		if (!data->keypressed) {
			FUNC1(dev, "NEC - Stray repeat message\n");
			return;
		}

		FUNC1(dev, "IR-NEC repeat s %u\n",
			(unsigned int)data->last_scancode);

		FUNC3(data, data->last_scancode, data->last_toggle);
		return;
	}

	/* Remaining leader space */
	if (FUNC2(data, 3)) {
		FUNC1(dev, "NEC - Invalid leader space\n");
		return;
	}

	address1  = FUNC0(FUNC2(data, 8));
	address2  = FUNC0(FUNC2(data, 8));
	command1  = FUNC0(FUNC2(data, 8));
	command2  = FUNC0(FUNC2(data, 8));

	/* Sanity check */
	if (data->irdata_error) {
		FUNC1(dev, "NEC - Invalid message\n");
		return;
	}

	/* Check command validity */
	if (command1 != ~command2) {
		FUNC1(dev, "NEC - Command bytes mismatch\n");
		return;
	}

	/* Check for extended NEC protocol */
	address = address1;
	if (address1 != ~address2)
		address |= address2 << 8;

	scancode = address << 8 | command1;

	FUNC1(dev, "IR-NEC ad %u cm %u s %u\n",
		(unsigned int)address,
		(unsigned int)command1,
		(unsigned int)scancode);

	FUNC3(data, scancode, !data->last_toggle);
}