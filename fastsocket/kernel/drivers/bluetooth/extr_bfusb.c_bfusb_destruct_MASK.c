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
struct hci_dev {struct bfusb_data* driver_data; } ;
struct bfusb_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct bfusb_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfusb_data*) ; 

__attribute__((used)) static void FUNC2(struct hci_dev *hdev)
{
	struct bfusb_data *data = hdev->driver_data;

	FUNC0("hdev %p bfusb %p", hdev, data);

	FUNC1(data);
}