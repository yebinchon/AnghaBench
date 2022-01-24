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
struct uvc_streaming {int /*<<< orphan*/  chain; TYPE_1__* dev; } ;
struct uvc_fh {int /*<<< orphan*/  state; struct uvc_streaming* stream; int /*<<< orphan*/  chain; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {int state; int /*<<< orphan*/  users; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UVC_DEV_DISCONNECTED ; 
 int /*<<< orphan*/  UVC_HANDLE_PASSIVE ; 
 int /*<<< orphan*/  UVC_TRACE_CALLS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_fh*) ; 
 struct uvc_fh* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct uvc_streaming* FUNC8 (struct file*) ; 

__attribute__((used)) static int FUNC9(struct file *file)
{
	struct uvc_streaming *stream;
	struct uvc_fh *handle;
	int ret = 0;

	FUNC7(UVC_TRACE_CALLS, "uvc_v4l2_open\n");
	stream = FUNC8(file);

	if (stream->dev->state & UVC_DEV_DISCONNECTED)
		return -ENODEV;

	ret = FUNC4(stream->dev->intf);
	if (ret < 0)
		return ret;

	/* Create the device handle. */
	handle = FUNC3(sizeof *handle, GFP_KERNEL);
	if (handle == NULL) {
		FUNC5(stream->dev->intf);
		return -ENOMEM;
	}

	if (FUNC1(&stream->dev->users) == 1) {
		ret = FUNC6(stream->dev);
		if (ret < 0) {
			FUNC5(stream->dev->intf);
			FUNC0(&stream->dev->users);
			FUNC2(handle);
			return ret;
		}
	}

	handle->chain = stream->chain;
	handle->stream = stream;
	handle->state = UVC_HANDLE_PASSIVE;
	file->private_data = handle;

	return 0;
}