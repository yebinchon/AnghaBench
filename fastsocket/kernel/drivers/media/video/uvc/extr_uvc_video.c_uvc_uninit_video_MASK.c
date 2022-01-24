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
struct uvc_streaming {struct urb** urb; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 unsigned int UVC_URBS ; 
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (struct uvc_streaming*) ; 

__attribute__((used)) static void FUNC3(struct uvc_streaming *stream, int free_buffers)
{
	struct urb *urb;
	unsigned int i;

	for (i = 0; i < UVC_URBS; ++i) {
		urb = stream->urb[i];
		if (urb == NULL)
			continue;

		FUNC1(urb);
		FUNC0(urb);
		stream->urb[i] = NULL;
	}

	if (free_buffers)
		FUNC2(stream);
}