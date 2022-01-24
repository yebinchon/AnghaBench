#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct video_device {int dummy; } ;
struct usb_stv {int maxframesize; scalar_t__ removed; scalar_t__ user; int /*<<< orphan*/  fbuf; scalar_t__ streaming; TYPE_1__* frame; } ;
struct file {struct video_device* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  grabstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int STV680_NUMFRAMES ; 
 int /*<<< orphan*/  FUNC1 (struct usb_stv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_stv*) ; 
 int FUNC4 (struct usb_stv*) ; 
 struct usb_stv* FUNC5 (struct video_device*) ; 

__attribute__((used)) static int FUNC6(struct file *file)
{
	struct video_device *dev = file->private_data;
	struct usb_stv *stv680 = FUNC5(dev);
	int i;

	for (i = 0; i < STV680_NUMFRAMES; i++)
		stv680->frame[i].grabstate = FRAME_UNUSED;
	if (stv680->streaming)
		FUNC3 (stv680);

	if ((i = FUNC4 (stv680)) < 0)
		FUNC0 (1, "STV(e): stop_video failed in stv_close");

	FUNC2 (stv680->fbuf, stv680->maxframesize * STV680_NUMFRAMES);
	stv680->user = 0;

	if (stv680->removed) {
		FUNC1(stv680);
		stv680 = NULL;
		FUNC0 (0, "STV(i): device unregistered");
	}
	file->private_data = NULL;
	return 0;
}