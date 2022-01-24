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
struct sd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  R518_I2C_CTL ; 
 int /*<<< orphan*/  R51x_I2C_DATA ; 
 int /*<<< orphan*/  R51x_I2C_SADDR_3 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct sd *sd,
		u8 reg,
		u8 value)
{
	FUNC0(D_USBO, "ov518_i2c_w %02x %02x", reg, value);

	/* Select camera register */
	FUNC3(sd, R51x_I2C_SADDR_3, reg);

	/* Write "value" to I2C data port of OV511 */
	FUNC3(sd, R51x_I2C_DATA, value);

	/* Initiate 3-byte write cycle */
	FUNC3(sd, R518_I2C_CTL, 0x01);

	/* wait for write complete */
	FUNC1(4);
	FUNC2(sd, R518_I2C_CTL);
}