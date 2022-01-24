#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_stv {TYPE_3__* udev; } ;
struct TYPE_7__ {TYPE_2__* actconfig; } ;
struct TYPE_5__ {int bConfigurationValue; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC3 (struct usb_stv *dev, int configuration, int interface, int alternate)
{

	if (configuration != dev->udev->actconfig->desc.bConfigurationValue
			|| FUNC1 (dev->udev) < 0) {
		FUNC0 (1, "STV(e): FAILED to reset configuration %i", configuration);
		return -1;
	}
	if (FUNC2 (dev->udev, interface, alternate) < 0) {
		FUNC0 (1, "STV(e): FAILED to set alternate interface %i", alternate);
		return -1;
	}
	return 0;
}