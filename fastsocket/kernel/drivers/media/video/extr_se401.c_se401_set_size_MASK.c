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
struct usb_se401 {int streaming; int cwidth; int cheight; int* width; int sizes; int* height; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_se401*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_se401*) ; 

__attribute__((used)) static int FUNC2(struct usb_se401 *se401, int width, int height)
{
	int wasstreaming = se401->streaming;
	/* Check to see if we need to change */
	if (se401->cwidth == width && se401->cheight == height)
		return 0;

	/* Check for a valid mode */
	if (!width || !height)
		return 1;
	if ((width & 1) || (height & 1))
		return 1;
	if (width > se401->width[se401->sizes-1])
		return 1;
	if (height > se401->height[se401->sizes-1])
		return 1;

	/* Stop a current stream and start it again at the new size */
	if (wasstreaming)
		FUNC1(se401);
	se401->cwidth = width;
	se401->cheight = height;
	if (wasstreaming)
		FUNC0(se401);
	return 0;
}