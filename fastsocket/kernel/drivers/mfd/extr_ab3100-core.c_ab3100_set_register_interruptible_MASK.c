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
typedef  int /*<<< orphan*/  u8 ;
struct ab3100 {int /*<<< orphan*/  access_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c_client; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ab3100 *ab3100, u8 reg, u8 regval)
{
	u8 regandval[2] = {reg, regval};
	int err;

	err = FUNC2(&ab3100->access_mutex);
	if (err)
		return err;

	/*
	 * A two-byte write message with the first byte containing the register
	 * number and the second byte containing the value to be written
	 * effectively sets a register in the AB3100.
	 */
	err = FUNC1(ab3100->i2c_client, regandval, 2);
	if (err < 0) {
		FUNC0(ab3100->dev,
			"write error (write register): %d\n",
			err);
	} else if (err != 2) {
		FUNC0(ab3100->dev,
			"write error (write register) "
			"%d bytes transferred (expected 2)\n",
			err);
		err = -EIO;
	} else {
		/* All is well */
		err = 0;
	}
	FUNC3(&ab3100->access_mutex);
	return err;
}