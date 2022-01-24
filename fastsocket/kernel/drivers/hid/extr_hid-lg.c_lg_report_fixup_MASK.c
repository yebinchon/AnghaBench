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
typedef  int __u8 ;

/* Variables and functions */
 unsigned long LG_RDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 

__attribute__((used)) static void FUNC2(struct hid_device *hdev, __u8 *rdesc,
		unsigned int rsize)
{
	unsigned long quirks = (unsigned long)FUNC1(hdev);

	if ((quirks & LG_RDESC) && rsize >= 90 && rdesc[83] == 0x26 &&
			rdesc[84] == 0x8c && rdesc[85] == 0x02) {
		FUNC0(&hdev->dev, "fixing up Logitech keyboard report "
				"descriptor\n");
		rdesc[84] = rdesc[89] = 0x4d;
		rdesc[85] = rdesc[90] = 0x10;
	}
}