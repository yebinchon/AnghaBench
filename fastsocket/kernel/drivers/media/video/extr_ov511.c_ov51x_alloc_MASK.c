#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_ov511 {int maxwidth; int maxheight; scalar_t__ buf_state; int /*<<< orphan*/  buf_lock; TYPE_2__* frame; void* tempfbuf; void* rawfbuf; scalar_t__ fbuf; TYPE_1__* sbuf; } ;
struct TYPE_4__ {unsigned char* compbuf; scalar_t__ data; void* tempdata; void* rawdata; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ BUF_ALLOCATED ; 
 int ENOMEM ; 
 int FRAMES_PER_DESC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int const,int const) ; 
 int MAX_FRAME_SIZE_PER_DESC ; 
 int FUNC1 (int const,int const) ; 
 int OV511_NUMFRAMES ; 
 int OV511_NUMSBUF ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_ov511*) ; 
 scalar_t__ FUNC9 (int const) ; 
 void* FUNC10 (int const) ; 

__attribute__((used)) static int
FUNC11(struct usb_ov511 *ov)
{
	int i;
	const int w = ov->maxwidth;
	const int h = ov->maxheight;
	const int data_bufsize = OV511_NUMFRAMES * FUNC0(w, h);
	const int raw_bufsize = OV511_NUMFRAMES * FUNC1(w, h);

	FUNC2(4, "entered");
	FUNC6(&ov->buf_lock);

	if (ov->buf_state == BUF_ALLOCATED)
		goto out;

	ov->fbuf = FUNC9(data_bufsize);
	if (!ov->fbuf)
		goto error;

	ov->rawfbuf = FUNC10(raw_bufsize);
	if (!ov->rawfbuf)
		goto error;

	FUNC5(ov->rawfbuf, 0, raw_bufsize);

	ov->tempfbuf = FUNC10(raw_bufsize);
	if (!ov->tempfbuf)
		goto error;

	FUNC5(ov->tempfbuf, 0, raw_bufsize);

	for (i = 0; i < OV511_NUMSBUF; i++) {
		ov->sbuf[i].data = FUNC4(FRAMES_PER_DESC *
			MAX_FRAME_SIZE_PER_DESC, GFP_KERNEL);
		if (!ov->sbuf[i].data)
			goto error;

		FUNC2(4, "sbuf[%d] @ %p", i, ov->sbuf[i].data);
	}

	for (i = 0; i < OV511_NUMFRAMES; i++) {
		ov->frame[i].data = ov->fbuf + i * FUNC0(w, h);
		ov->frame[i].rawdata = ov->rawfbuf
		 + i * FUNC1(w, h);
		ov->frame[i].tempdata = ov->tempfbuf
		 + i * FUNC1(w, h);

		ov->frame[i].compbuf =
		 (unsigned char *) FUNC3(GFP_KERNEL);
		if (!ov->frame[i].compbuf)
			goto error;

		FUNC2(4, "frame[%d] @ %p", i, ov->frame[i].data);
	}

	ov->buf_state = BUF_ALLOCATED;
out:
	FUNC7(&ov->buf_lock);
	FUNC2(4, "leaving");
	return 0;
error:
	FUNC8(ov);
	FUNC7(&ov->buf_lock);
	FUNC2(4, "errored");
	return -ENOMEM;
}