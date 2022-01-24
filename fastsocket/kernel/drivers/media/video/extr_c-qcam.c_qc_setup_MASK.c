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
struct qcam_device {int brightness; int ccd_height; int ccd_width; int top; int left; int contrast; int whitebal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qcam_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcam_device*,int,int) ; 

__attribute__((used)) static void FUNC2(struct qcam_device *q)
{
	FUNC0(q);

	/* Set the brightness.  */
	FUNC1(q, 11, q->brightness);

	/* Set the height and width.  These refer to the actual
	   CCD area *before* applying the selected decimation.  */
	FUNC1(q, 17, q->ccd_height);
	FUNC1(q, 19, q->ccd_width / 2);

	/* Set top and left.  */
	FUNC1(q, 0xd, q->top);
	FUNC1(q, 0xf, q->left);

	/* Set contrast and white balance.  */
	FUNC1(q, 0x19, q->contrast);
	FUNC1(q, 0x1f, q->whitebal);

	/* Set the speed.  */
	FUNC1(q, 45, 2);
}