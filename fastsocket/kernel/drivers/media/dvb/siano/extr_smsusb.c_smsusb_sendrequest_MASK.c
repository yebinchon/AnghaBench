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
struct smsusb_device_t {int /*<<< orphan*/  udev; } ;
struct SmsMsgHdr_ST {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SmsMsgHdr_ST*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *context, void *buffer, size_t size)
{
	struct smsusb_device_t *dev = (struct smsusb_device_t *) context;
	int dummy;

	FUNC0((struct SmsMsgHdr_ST *)buffer);
	return FUNC1(dev->udev, FUNC2(dev->udev, 2),
			    buffer, size, &dummy, 1000);
}