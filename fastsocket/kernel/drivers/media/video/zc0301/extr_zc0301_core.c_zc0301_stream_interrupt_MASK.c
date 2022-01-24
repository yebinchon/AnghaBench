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
struct zc0301_device {scalar_t__ stream; int state; TYPE_1__* v4ldev; int /*<<< orphan*/  wait_stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int DEV_DISCONNECTED ; 
 int DEV_MISCONFIGURED ; 
 int EIO ; 
 int ENODEV ; 
 scalar_t__ STREAM_INTERRUPT ; 
 scalar_t__ STREAM_OFF ; 
 int /*<<< orphan*/  ZC0301_URB_TIMEOUT ; 
 long FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct zc0301_device* cam)
{
	long timeout;

	cam->stream = STREAM_INTERRUPT;
	timeout = FUNC1(cam->wait_stream,
				     (cam->stream == STREAM_OFF) ||
				     (cam->state & DEV_DISCONNECTED),
				     ZC0301_URB_TIMEOUT);
	if (cam->state & DEV_DISCONNECTED)
		return -ENODEV;
	else if (cam->stream != STREAM_OFF) {
		cam->state |= DEV_MISCONFIGURED;
		FUNC0(1, "URB timeout reached. The camera is misconfigured. To "
		       "use it, close and open /dev/video%d again.",
		    cam->v4ldev->num);
		return -EIO;
	}

	return 0;
}