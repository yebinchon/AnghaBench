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
struct TYPE_3__ {scalar_t__ device_type; } ;
struct TYPE_4__ {TYPE_1__ pnp_id; } ;
struct camera_data {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_SET_VP_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char) ; 
 scalar_t__ DEVICE_STV_672 ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

void FUNC2(struct camera_data *cam, unsigned char value)
{
	/***
	 * Don't let the register be set to zero - bug in VP4 - flash of full
	 * brightness
	 ***/
	if (cam->params.pnp_id.device_type == DEVICE_STV_672 && value == 0)
		value++;
	FUNC0("Setting brightness to %d (0x%0x)\n", value, value);
	FUNC1(cam,CPIA2_CMD_SET_VP_BRIGHTNESS, TRANSFER_WRITE,value);
}