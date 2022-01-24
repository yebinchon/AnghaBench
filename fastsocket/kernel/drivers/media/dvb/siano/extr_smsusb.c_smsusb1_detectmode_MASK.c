#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smsusb_device_t {TYPE_1__* udev; } ;
struct TYPE_2__ {char* product; } ;

/* Variables and functions */
 int DEVICE_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void *context, int *mode)
{
	char *product_string =
		((struct smsusb_device_t *) context)->udev->product;

	*mode = DEVICE_MODE_NONE;

	if (!product_string) {
		product_string = "none";
		FUNC0("product string not found");
	} else if (FUNC2(product_string, "DVBH"))
		*mode = 1;
	else if (FUNC2(product_string, "BDA"))
		*mode = 4;
	else if (FUNC2(product_string, "DVBT"))
		*mode = 0;
	else if (FUNC2(product_string, "TDMB"))
		*mode = 2;

	FUNC1("%d \"%s\"", *mode, product_string);
}