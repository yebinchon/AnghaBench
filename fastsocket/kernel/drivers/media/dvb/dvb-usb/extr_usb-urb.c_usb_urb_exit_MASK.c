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
struct usb_data_stream {int urbs_initialized; int /*<<< orphan*/ ** urb_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_data_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_data_stream*) ; 

int FUNC4(struct usb_data_stream *stream)
{
	int i;

	FUNC3(stream);

	for (i = 0; i < stream->urbs_initialized; i++) {
		if (stream->urb_list[i] != NULL) {
			FUNC0("freeing URB no. %d.\n",i);
			/* free the URBs */
			FUNC2(stream->urb_list[i]);
		}
	}
	stream->urbs_initialized = 0;

	FUNC1(stream);
	return 0;
}