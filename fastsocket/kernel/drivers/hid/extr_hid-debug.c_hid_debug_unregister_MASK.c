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
struct hid_device {int /*<<< orphan*/  debug_dir; int /*<<< orphan*/  debug_events; int /*<<< orphan*/  debug_rdesc; int /*<<< orphan*/  debug_wait; scalar_t__ debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct hid_device *hdev)
{
	hdev->debug = 0;
	FUNC1(&hdev->debug_wait);
	FUNC0(hdev->debug_rdesc);
	FUNC0(hdev->debug_events);
	FUNC0(hdev->debug_dir);
}