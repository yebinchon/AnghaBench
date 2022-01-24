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
struct kaweth_device {scalar_t__ packet_filter_bitmap; int /*<<< orphan*/  scratch; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  KAWETH_COMMAND_SET_PACKET_FILTER ; 
 int /*<<< orphan*/  KAWETH_CONTROL_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (struct kaweth_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct kaweth_device *kaweth)
{
	int result;
	__u16 packet_filter_bitmap = kaweth->packet_filter_bitmap;

	kaweth->packet_filter_bitmap = 0;
	if (packet_filter_bitmap == 0)
		return;

	if (FUNC2())
		return;

	result = FUNC3(kaweth,
				FUNC4(kaweth->dev, 0),
				KAWETH_COMMAND_SET_PACKET_FILTER,
				USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
				packet_filter_bitmap,
				0,
				(void *)&kaweth->scratch,
				0,
				KAWETH_CONTROL_TIMEOUT);

	if(result < 0) {
		FUNC1("Failed to set Rx mode: %d", result);
	}
	else {
		FUNC0("Set Rx mode to %d", packet_filter_bitmap);
	}
}