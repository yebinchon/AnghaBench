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
struct video_picture {int whiteness; int /*<<< orphan*/  hue; int /*<<< orphan*/  colour; int /*<<< orphan*/  brightness; int /*<<< orphan*/  contrast; } ;
struct usb_ov511 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (struct usb_ov511*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usb_ov511*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_ov511*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usb_ov511*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct usb_ov511 *ov, struct video_picture *p)
{
	int rc;

	FUNC1(4, "sensor_get_picture");

	/* Don't return error if a setting is unsupported, or rest of settings
	 * will not be performed */

	rc = FUNC3(ov, &(p->contrast));
	if (FUNC0(rc))
		return rc;

	rc = FUNC2(ov, &(p->brightness));
	if (FUNC0(rc))
		return rc;

	rc = FUNC5(ov, &(p->colour));
	if (FUNC0(rc))
		return rc;

	rc = FUNC4(ov, &(p->hue));
	if (FUNC0(rc))
		return rc;

	p->whiteness = 105 << 8;

	return 0;
}