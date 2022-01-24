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
struct usb_ov511 {int compress_inited; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct usb_ov511*) ; 

__attribute__((used)) static int
FUNC2(struct usb_ov511 *ov)
{
	int rc = 0;

	if (!ov->compress_inited) {
		if (FUNC1(ov) < 0) {
			FUNC0("Error uploading quantization tables");
			rc = -EIO;
			goto out;
		}
	}

	ov->compress_inited = 1;
out:
	return rc;
}