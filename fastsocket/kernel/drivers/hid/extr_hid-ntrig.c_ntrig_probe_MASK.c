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
struct ntrig_data {scalar_t__ found_contact_id; scalar_t__ reading_a_point; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_CONNECT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct ntrig_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ntrig_data*) ; 
 struct ntrig_data* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hid_device *hdev, const struct hid_device_id *id)
{
	int ret;
	struct ntrig_data *nd;

	nd = FUNC5(sizeof(struct ntrig_data), GFP_KERNEL);
	if (!nd) {
		FUNC0(&hdev->dev, "cannot allocate N-Trig data\n");
		return -ENOMEM;
	}
	nd->reading_a_point = 0;
	nd->found_contact_id = 0;
	FUNC3(hdev, nd);

	ret = FUNC2(hdev);
	if (!ret)
		ret = FUNC1(hdev, HID_CONNECT_DEFAULT);

	if (ret)
		FUNC4 (nd);

	return ret;
}