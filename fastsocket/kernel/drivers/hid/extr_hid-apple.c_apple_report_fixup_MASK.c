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
struct hid_device {int /*<<< orphan*/  dev; } ;
struct apple_sc {int quirks; } ;
typedef  int __u8 ;

/* Variables and functions */
 int APPLE_RDESC_JIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct apple_sc* FUNC1 (struct hid_device*) ; 

__attribute__((used)) static void FUNC2(struct hid_device *hdev, __u8 *rdesc,
		unsigned int rsize)
{
	struct apple_sc *asc = FUNC1(hdev);

	if ((asc->quirks & APPLE_RDESC_JIS) && rsize >= 60 &&
			rdesc[53] == 0x65 && rdesc[59] == 0x65) {
		FUNC0(&hdev->dev, "fixing up MacBook JIS keyboard report "
				"descriptor\n");
		rdesc[53] = rdesc[59] = 0xe7;
	}
}