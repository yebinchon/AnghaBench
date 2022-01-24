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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void FUNC4(struct dvb_usb_device *d)
{
	u8 fpga_vers, fw_vers[6];

	if (!FUNC2(d, fw_vers))
		FUNC3("FW Version = %i.%02i.%i (0x%x)  Build %4i/%02i/%02i",
		fw_vers[2], fw_vers[1], fw_vers[0], FUNC0(fw_vers),
		2000 + fw_vers[5], fw_vers[4], fw_vers[3]);
	else
		FUNC3("failed to get FW version");

	if (!FUNC1(d, &fpga_vers))
		FUNC3("FPGA Version = %i", fpga_vers);
	else
		FUNC3("failed to get FPGA version");
}