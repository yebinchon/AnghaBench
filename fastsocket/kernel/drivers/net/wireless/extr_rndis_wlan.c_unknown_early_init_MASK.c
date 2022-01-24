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
struct usbnet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct usbnet *usbdev)
{
	/* copy module parameters for unknown so that iwconfig reports txpower
	 * and workaround parameter is copied to private structure correctly.
	 */
	FUNC0(usbdev, RNDIS_UNKNOWN);

	/* This is unknown device, so do not try set configuration parameters.
	 */

	return 0;
}