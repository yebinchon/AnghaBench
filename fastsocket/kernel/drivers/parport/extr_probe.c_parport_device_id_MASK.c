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
struct pardevice {int /*<<< orphan*/  daisy; int /*<<< orphan*/  port; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENXIO ; 
 int IEEE1284_DEVICEID ; 
 int IEEE1284_MODE_COMPAT ; 
 int IEEE1284_MODE_NIBBLE ; 
 int /*<<< orphan*/  FUNC0 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct pardevice*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct pardevice* FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct pardevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

ssize_t FUNC7 (int devnum, char *buffer, size_t count)
{
	ssize_t retval = -ENXIO;
	struct pardevice *dev = FUNC3 (devnum, "Device ID probe");
	if (!dev)
		return -ENXIO;

	FUNC0 (dev);

	/* Negotiate to compatibility mode, and then to device ID
	 * mode. (This so that we start form beginning of device ID if
	 * already in device ID mode.) */
	FUNC2 (dev->port, IEEE1284_MODE_COMPAT);
	retval = FUNC2 (dev->port,
				    IEEE1284_MODE_NIBBLE | IEEE1284_DEVICEID);

	if (!retval) {
		retval = FUNC4 (dev->port, buffer, count);
		FUNC2 (dev->port, IEEE1284_MODE_COMPAT);
		if (retval > 2)
			FUNC6 (dev->port, dev->daisy, buffer+2);
	}

	FUNC5 (dev);
	FUNC1 (dev);
	return retval;
}