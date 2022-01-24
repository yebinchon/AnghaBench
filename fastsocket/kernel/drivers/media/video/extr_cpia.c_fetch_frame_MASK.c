#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ mode; int /*<<< orphan*/  decimation; } ;
struct TYPE_10__ {int expMode; } ;
struct TYPE_8__ {scalar_t__ streamState; } ;
struct TYPE_14__ {TYPE_6__ compression; TYPE_3__ exposure; TYPE_1__ status; int /*<<< orphan*/  streamStartLine; } ;
struct TYPE_12__ {void* state; int /*<<< orphan*/  count; int /*<<< orphan*/  data; } ;
struct cam_data {int first_frame; unsigned long transfer_rate; int image_size; size_t curframe; TYPE_7__ params; TYPE_5__ decompressed_frame; TYPE_4__* frame; int /*<<< orphan*/  raw_image; int /*<<< orphan*/  lowlevel_data; TYPE_2__* ops; } ;
struct TYPE_11__ {scalar_t__ state; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {int (* streamRead ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ wait_for_stream_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_COMMAND_DiscardFrame ; 
 int /*<<< orphan*/  CPIA_COMMAND_GetCameraStatus ; 
 int /*<<< orphan*/  CPIA_COMMAND_GetColourBalance ; 
 int /*<<< orphan*/  CPIA_COMMAND_GetExposure ; 
 int /*<<< orphan*/  CPIA_COMMAND_GrabFrame ; 
 int /*<<< orphan*/  CPIA_COMMAND_ReadMCPorts ; 
 int /*<<< orphan*/  CPIA_COMMAND_SetCompression ; 
 int /*<<< orphan*/  CPIA_COMMAND_SetGrabMode ; 
 scalar_t__ CPIA_COMPRESSION_NONE ; 
 scalar_t__ CPIA_GRAB_CONTINUOUS ; 
 scalar_t__ CPIA_GRAB_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINTR ; 
 int EIO ; 
 void* FRAME_DONE ; 
 scalar_t__ FRAME_READY ; 
 int HZ ; 
 int /*<<< orphan*/  NO_DECIMATION ; 
 int READY_TIMEOUT ; 
 scalar_t__ STREAM_PAUSED ; 
 scalar_t__ STREAM_READY ; 
 int /*<<< orphan*/  FUNC1 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct cam_data*) ; 
 scalar_t__ FUNC4 (struct cam_data*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct cam_data*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cam_data*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(void *data)
{
	int image_size, retry;
	struct cam_data *cam = (struct cam_data *)data;
	unsigned long oldjif, rate, diff;

	/* Allow up to two bad images in a row to be read and
	 * ignored before an error is reported */
	for (retry = 0; retry < 3; ++retry) {
		if (retry)
			FUNC0("retry=%d\n", retry);

		if (!cam->ops)
			continue;

		/* load first frame always uncompressed */
		if (cam->first_frame &&
		    cam->params.compression.mode != CPIA_COMPRESSION_NONE) {
			FUNC4(cam, CPIA_COMMAND_SetCompression,
				   CPIA_COMPRESSION_NONE,
				   NO_DECIMATION, 0, 0);
			/* Trial & error - Discarding a frame prevents the
			   first frame from having an error in the data. */
			FUNC4(cam, CPIA_COMMAND_DiscardFrame, 0, 0, 0, 0);
		}

		/* init camera upload */
		if (FUNC4(cam, CPIA_COMMAND_GrabFrame, 0,
			       cam->params.streamStartLine, 0, 0))
			continue;

		if (cam->ops->wait_for_stream_ready) {
			/* loop until image ready */
			int count = 0;
			FUNC4(cam, CPIA_COMMAND_GetCameraStatus,0,0,0,0);
			while (cam->params.status.streamState != STREAM_READY) {
				if(++count > READY_TIMEOUT)
					break;
				if(cam->params.status.streamState ==
				   STREAM_PAUSED) {
					/* Bad news */
					if(!FUNC1(cam))
						return -EIO;
				}

				FUNC2();

				/* sleep for 10 ms, hopefully ;) */
				FUNC7(10);
				if (FUNC10(current))
					return -EINTR;

				FUNC4(cam, CPIA_COMMAND_GetCameraStatus,
					   0, 0, 0, 0);
			}
			if(cam->params.status.streamState != STREAM_READY) {
				continue;
			}
		}

		FUNC2();

		/* grab image from camera */
		oldjif = jiffies;
		image_size = cam->ops->streamRead(cam->lowlevel_data,
						  cam->raw_image, 0);
		if (image_size <= 0) {
			FUNC0("streamRead failed: %d\n", image_size);
			continue;
		}

		rate = image_size * HZ / 1024;
		diff = jiffies-oldjif;
		cam->transfer_rate = diff==0 ? rate : rate/diff;
			/* diff==0 ? unlikely but possible */

		/* Switch flicker control back on if it got turned off */
		FUNC9(cam);

		/* If AEC is enabled, monitor the exposure and
		   adjust the sensor frame rate if needed */
		if(cam->params.exposure.expMode == 2)
			FUNC6(cam);

		/* camera idle now so dispatch queued commands */
		FUNC3(cam);

		/* Update our knowledge of the camera state */
		FUNC4(cam, CPIA_COMMAND_GetColourBalance, 0, 0, 0, 0);
		FUNC4(cam, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);
		FUNC4(cam, CPIA_COMMAND_ReadMCPorts, 0, 0, 0, 0);

		/* decompress and convert image to by copying it from
		 * raw_image to decompressed_frame
		 */

		FUNC2();

		cam->image_size = FUNC8(cam, image_size);
		if (cam->image_size <= 0) {
			FUNC0("parse_picture failed %d\n", cam->image_size);
			if(cam->params.compression.mode !=
			   CPIA_COMPRESSION_NONE) {
				/* Compression may not work right if we
				   had a bad frame, get the next one
				   uncompressed. */
				cam->first_frame = 1;
				FUNC4(cam, CPIA_COMMAND_SetGrabMode,
					   CPIA_GRAB_SINGLE, 0, 0, 0);
				/* FIXME: Trial & error - need up to 70ms for
				   the grab mode change to complete ? */
				FUNC7(70);
				if (FUNC10(current))
					return -EINTR;
			}
		} else
			break;
	}

	if (retry < 3) {
		/* FIXME: this only works for double buffering */
		if (cam->frame[cam->curframe].state == FRAME_READY) {
			FUNC5(cam->frame[cam->curframe].data,
			       cam->decompressed_frame.data,
			       cam->decompressed_frame.count);
			cam->frame[cam->curframe].state = FRAME_DONE;
		} else
			cam->decompressed_frame.state = FRAME_DONE;

		if (cam->first_frame) {
			cam->first_frame = 0;
			FUNC4(cam, CPIA_COMMAND_SetCompression,
				   cam->params.compression.mode,
				   cam->params.compression.decimation, 0, 0);

			/* Switch from single-grab to continuous grab */
			FUNC4(cam, CPIA_COMMAND_SetGrabMode,
				   CPIA_GRAB_CONTINUOUS, 0, 0, 0);
		}
		return 0;
	}
	return -EIO;
}