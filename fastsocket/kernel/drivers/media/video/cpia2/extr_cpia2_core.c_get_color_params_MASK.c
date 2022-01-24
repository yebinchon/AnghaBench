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
struct camera_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_GET_CONTRAST ; 
 int /*<<< orphan*/  CPIA2_CMD_GET_VP_BRIGHTNESS ; 
 int /*<<< orphan*/  CPIA2_CMD_GET_VP_SATURATION ; 
 int /*<<< orphan*/  TRANSFER_READ ; 
 int /*<<< orphan*/  FUNC0 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct camera_data *cam)
{
	FUNC0(cam, CPIA2_CMD_GET_VP_BRIGHTNESS, TRANSFER_READ, 0);
	FUNC0(cam, CPIA2_CMD_GET_VP_SATURATION, TRANSFER_READ, 0);
	FUNC0(cam, CPIA2_CMD_GET_CONTRAST, TRANSFER_READ, 0);
}