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
struct hif_device_usb {int /*<<< orphan*/  regout_submitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC1 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC2 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hif_device_usb *hif_dev)
{
	FUNC3(&hif_dev->regout_submitted);
	FUNC0(hif_dev);
	FUNC2(hif_dev);
	FUNC1(hif_dev);
}