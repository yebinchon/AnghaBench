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
struct mousevsc_dev {int /*<<< orphan*/  hid_device; } ;
struct hv_device {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct mousevsc_dev* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mousevsc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hv_device *dev)
{
	struct mousevsc_dev *input_dev = FUNC2(dev);

	FUNC4(dev->channel);
	FUNC1(input_dev->hid_device);
	FUNC0(input_dev->hid_device);
	FUNC3(input_dev);

	return 0;
}