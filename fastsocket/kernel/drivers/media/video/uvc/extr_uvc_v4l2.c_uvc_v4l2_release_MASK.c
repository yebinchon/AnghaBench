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
struct uvc_streaming {TYPE_1__* dev; int /*<<< orphan*/  queue; } ;
struct uvc_fh {struct uvc_streaming* stream; } ;
struct file {struct uvc_fh* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  intf; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  UVC_TRACE_CALLS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_fh*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct uvc_fh*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct uvc_streaming*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct file *file)
{
	struct uvc_fh *handle = file->private_data;
	struct uvc_streaming *stream = handle->stream;

	FUNC8(UVC_TRACE_CALLS, "uvc_v4l2_release\n");

	/* Only free resources if this is a privileged handle. */
	if (FUNC5(handle)) {
		FUNC9(stream, 0);

		if (FUNC4(&stream->queue) < 0)
			FUNC6(KERN_ERR, "uvc_v4l2_release: Unable to "
					"free buffers.\n");
	}

	/* Release the file handle. */
	FUNC3(handle);
	FUNC1(handle);
	file->private_data = NULL;

	if (FUNC0(&stream->dev->users) == 0)
		FUNC7(stream->dev);

	FUNC2(stream->dev->intf);
	return 0;
}