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
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct hif_device_usb*) ; 
 scalar_t__ FUNC1 (struct hif_device_usb*) ; 
 scalar_t__ FUNC2 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC3 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC4 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hif_device_usb *hif_dev)
{
	/* Register Write */
	FUNC5(&hif_dev->regout_submitted);

	/* TX */
	if (FUNC2(hif_dev) < 0)
		goto err;

	/* RX */
	if (FUNC1(hif_dev) < 0)
		goto err_rx;

	/* Register Read */
	if (FUNC0(hif_dev) < 0)
		goto err_reg;

	return 0;
err_reg:
	FUNC3(hif_dev);
err_rx:
	FUNC4(hif_dev);
err:
	return -ENOMEM;
}