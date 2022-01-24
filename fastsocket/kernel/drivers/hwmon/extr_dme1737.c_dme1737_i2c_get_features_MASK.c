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
typedef  int u16 ;
struct dme1737_data {int has_fan; int has_pwm; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int force_id ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int sio_cip, struct dme1737_data *data)
{
	int err = 0, reg;
	u16 addr;

	FUNC0(sio_cip);

	/* Check device ID
	 * The DME1737 can return either 0x78 or 0x77 as its device ID.
	 * The SCH5027 returns 0x89 as its device ID. */
	reg = force_id ? force_id : FUNC2(sio_cip, 0x20);
	if (!(reg == 0x77 || reg == 0x78 || reg == 0x89)) {
		err = -ENODEV;
		goto exit;
	}

	/* Select logical device A (runtime registers) */
	FUNC3(sio_cip, 0x07, 0x0a);

	/* Get the base address of the runtime registers */
	if (!(addr = (FUNC2(sio_cip, 0x60) << 8) |
		      FUNC2(sio_cip, 0x61))) {
		err = -ENODEV;
		goto exit;
	}

	/* Read the runtime registers to determine which optional features
	 * are enabled and available. Bits [3:2] of registers 0x43-0x46 are set
	 * to '10' if the respective feature is enabled. */
	if ((FUNC4(addr + 0x43) & 0x0c) == 0x08) { /* fan6 */
		data->has_fan |= (1 << 5);
	}
	if ((FUNC4(addr + 0x44) & 0x0c) == 0x08) { /* pwm6 */
		data->has_pwm |= (1 << 5);
	}
	if ((FUNC4(addr + 0x45) & 0x0c) == 0x08) { /* fan5 */
		data->has_fan |= (1 << 4);
	}
	if ((FUNC4(addr + 0x46) & 0x0c) == 0x08) { /* pwm5 */
		data->has_pwm |= (1 << 4);
	}

exit:
	FUNC1(sio_cip);

	return err;
}