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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {scalar_t__ payload_size; int header_size; int skip_payload; scalar_t__ max_payload_size; int /*<<< orphan*/  header; } ;
struct uvc_streaming {TYPE_1__ bulk; int /*<<< orphan*/  queue; } ;
struct uvc_buffer {scalar_t__ state; } ;
struct urb {int actual_length; int transfer_buffer_length; int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ UVC_BUF_STATE_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct uvc_buffer* FUNC1 (int /*<<< orphan*/ *,struct uvc_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_streaming*,struct uvc_buffer*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uvc_streaming*,struct uvc_buffer*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct uvc_streaming*,struct uvc_buffer*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct urb *urb, struct uvc_streaming *stream,
	struct uvc_buffer *buf)
{
	u8 *mem;
	int len, ret;

	if (urb->actual_length == 0)
		return;

	mem = urb->transfer_buffer;
	len = urb->actual_length;
	stream->bulk.payload_size += len;

	/* If the URB is the first of its payload, decode and save the
	 * header.
	 */
	if (stream->bulk.header_size == 0 && !stream->bulk.skip_payload) {
		do {
			ret = FUNC4(stream, buf, mem, len);
			if (ret == -EAGAIN)
				buf = FUNC1(&stream->queue,
							    buf);
		} while (ret == -EAGAIN);

		/* If an error occured skip the rest of the payload. */
		if (ret < 0 || buf == NULL) {
			stream->bulk.skip_payload = 1;
		} else {
			FUNC0(stream->bulk.header, mem, ret);
			stream->bulk.header_size = ret;

			mem += ret;
			len -= ret;
		}
	}

	/* The buffer queue might have been cancelled while a bulk transfer
	 * was in progress, so we can reach here with buf equal to NULL. Make
	 * sure buf is never dereferenced if NULL.
	 */

	/* Process video data. */
	if (!stream->bulk.skip_payload && buf != NULL)
		FUNC2(stream, buf, mem, len);

	/* Detect the payload end by a URB smaller than the maximum size (or
	 * a payload size equal to the maximum) and process the header again.
	 */
	if (urb->actual_length < urb->transfer_buffer_length ||
	    stream->bulk.payload_size >= stream->bulk.max_payload_size) {
		if (!stream->bulk.skip_payload && buf != NULL) {
			FUNC3(stream, buf, stream->bulk.header,
				stream->bulk.payload_size);
			if (buf->state == UVC_BUF_STATE_READY)
				buf = FUNC1(&stream->queue,
							    buf);
		}

		stream->bulk.header_size = 0;
		stream->bulk.skip_payload = 0;
		stream->bulk.payload_size = 0;
	}
}