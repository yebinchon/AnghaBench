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
struct TYPE_3__ {unsigned char contrast; } ;
struct TYPE_4__ {TYPE_1__ color_params; } ;
struct camera_data {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_SET_CONTRAST ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 

void FUNC2(struct camera_data *cam, unsigned char value)
{
	FUNC0("Setting contrast to %d (0x%0x)\n", value, value);
	cam->params.color_params.contrast = value;
	FUNC1(cam, CPIA2_CMD_SET_CONTRAST, TRANSFER_WRITE, value);
}