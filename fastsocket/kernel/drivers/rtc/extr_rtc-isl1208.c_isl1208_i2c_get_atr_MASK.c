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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISL1208_REG_ATR ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct i2c_client *client)
{
	int atr = FUNC0(client, ISL1208_REG_ATR);
	if (atr < 0)
		return atr;

	/* The 6bit value in the ATR register controls the load
	 * capacitance C_load * in steps of 0.25pF
	 *
	 * bit (1<<5) of the ATR register is inverted
	 *
	 * C_load(ATR=0x20) =  4.50pF
	 * C_load(ATR=0x00) = 12.50pF
	 * C_load(ATR=0x1f) = 20.25pF
	 *
	 */

	atr &= 0x3f;		/* mask out lsb */
	atr ^= 1 << 5;		/* invert 6th bit */
	atr += 2 * 9;		/* add offset of 4.5pF; unit[atr] = 0.25pF */

	return atr;
}