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
struct sony_sc {int quirks; } ;
struct hid_device {int /*<<< orphan*/  dev; } ;
typedef  int __u8 ;

/* Variables and functions */
 int VAIO_RDESC_CONSTANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct sony_sc* FUNC1 (struct hid_device*) ; 

__attribute__((used)) static void FUNC2(struct hid_device *hdev, __u8 *rdesc,
		unsigned int rsize)
{
	struct sony_sc *sc = FUNC1(hdev);

	if ((sc->quirks & VAIO_RDESC_CONSTANT) &&
			rsize >= 56 && rdesc[54] == 0x81 && rdesc[55] == 0x07) {
		FUNC0(&hdev->dev, "Fixing up Sony Vaio VGX report "
				"descriptor\n");
		rdesc[55] = 0x06;
	}
}