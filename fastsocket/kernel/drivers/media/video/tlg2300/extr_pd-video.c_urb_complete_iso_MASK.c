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
struct video_data {int /*<<< orphan*/  bubble_work; int /*<<< orphan*/  is_streaming; } ;
struct urb {int number_of_packets; scalar_t__ transfer_buffer; struct front_face* context; } ;
struct front_face {TYPE_1__* pd; } ;
struct TYPE_2__ {struct video_data video_data; } ;

/* Variables and functions */
#define  GET_NONE 131 
#define  GET_SUCCESS 130 
#define  GET_TOO_MUCH_BUBBLE 129 
#define  GET_TRAILER 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int ISO_PKT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct video_data*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct video_data*,char*,int) ; 
 int FUNC2 (int,struct urb*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct front_face*,struct video_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct front_face *front = urb->context;
	struct video_data *video = &front->pd->video_data;
	int bubble_err = 0, head = 0, tail = 0;
	char *src = (char *)urb->transfer_buffer;
	int ret = 0;

	if (!video->is_streaming)
		return;

	do {
		if (!FUNC3(front, video))
			goto out;

		switch (FUNC2(head, urb, &head, &tail, &bubble_err)) {
		case GET_SUCCESS:
			FUNC1(video, src + (head * ISO_PKT_SIZE),
					(tail - head + 1) * ISO_PKT_SIZE);
			break;
		case GET_TRAILER:
			FUNC0(video, src + (head * ISO_PKT_SIZE),
					ISO_PKT_SIZE);
			break;
		case GET_NONE:
			goto out;
		case GET_TOO_MUCH_BUBBLE:
			FUNC4("\t We got too much bubble");
			FUNC5(&video->bubble_work);
			return;
		}
	} while (head = tail + 1, head < urb->number_of_packets);

out:
	ret = FUNC6(urb, GFP_ATOMIC);
	if (ret)
		FUNC4("usb_submit_urb err : %d", ret);
}