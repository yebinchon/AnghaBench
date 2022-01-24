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
struct kaweth_device {int /*<<< orphan*/  scratch; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_COMMAND_SET_SOFS_WAIT ; 
 int /*<<< orphan*/  KAWETH_CONTROL_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int FUNC1 (struct kaweth_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct kaweth_device *kaweth, __u16 sofs_wait)
{
	int retval;

	FUNC0("Set SOFS wait to %d", (unsigned)sofs_wait);

	retval = FUNC1(kaweth,
				FUNC2(kaweth->dev, 0),
				KAWETH_COMMAND_SET_SOFS_WAIT,
				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
				sofs_wait,
				0,
				(void *)&kaweth->scratch,
				0,
				KAWETH_CONTROL_TIMEOUT);

	return retval;
}