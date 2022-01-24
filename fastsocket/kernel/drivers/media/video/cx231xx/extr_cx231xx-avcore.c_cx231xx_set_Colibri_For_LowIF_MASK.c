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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct cx231xx {int norm; int /*<<< orphan*/  active_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_MODE_LOW_IF ; 
 int /*<<< orphan*/  PWR_CTL_EN ; 
 int /*<<< orphan*/  VRT_SET_REGISTER ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int,scalar_t__,int) ; 
 scalar_t__ FUNC5 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

void FUNC6(struct cx231xx *dev, u32 if_freq,
		 u8 spectral_invert, u32 mode)
{
	u32 colibri_carrier_offset = 0;
	u8 status = 0;
	u32 func_mode = 0x01; /* Device has a DIF if this function is called */
	u32 standard = 0;
	u8 value[4] = { 0, 0, 0, 0 };

	FUNC3("Enter cx231xx_set_Colibri_For_LowIF()\n");
	value[0] = (u8) 0x6F;
	value[1] = (u8) 0x6F;
	value[2] = (u8) 0x6F;
	value[3] = (u8) 0x6F;
	status = FUNC5(dev, VRT_SET_REGISTER,
					PWR_CTL_EN, value, 4);

	/*Set colibri for low IF*/
	status = FUNC1(dev, AFE_MODE_LOW_IF);

	/* Set C2HH for low IF operation.*/
	standard = dev->norm;
	status = FUNC2(dev, dev->active_mode,
						       func_mode, standard);

	/* Get colibri offsets.*/
	colibri_carrier_offset = FUNC0(mode,
								   standard);

	FUNC3("colibri_carrier_offset=%d, standard=0x%x\n",
		     colibri_carrier_offset, standard);

	/* Set the band Pass filter for DIF*/
	FUNC4(dev, (if_freq+colibri_carrier_offset),
				 spectral_invert, mode);
}