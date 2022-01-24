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
struct pwc_device {int /*<<< orphan*/  ptrlock; TYPE_1__* read_frame; TYPE_1__* empty_frames_tail; TYPE_1__* empty_frames; TYPE_1__* full_frames; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct pwc_device *pdev)
{
	int ret = 0;
	unsigned long flags;

	FUNC2(&pdev->ptrlock, flags);
	/* First grab our read_frame; this is removed from all lists, so
	   we can release the lock after this without problems */
	if (pdev->read_frame != NULL) {
		/* This can't theoretically happen */
		FUNC0("Huh? Read frame still in use?\n");
		FUNC3(&pdev->ptrlock, flags);
		return ret;
	}


	if (pdev->full_frames == NULL) {
		FUNC0("Woops. No frames ready.\n");
	}
	else {
		pdev->read_frame = pdev->full_frames;
		pdev->full_frames = pdev->full_frames->next;
		pdev->read_frame->next = NULL;
	}

	if (pdev->read_frame != NULL) {
		/* Decompression is a lengthy process, so it's outside of the lock.
		   This gives the isoc_handler the opportunity to fill more frames
		   in the mean time.
		*/
		FUNC3(&pdev->ptrlock, flags);
		ret = FUNC1(pdev);
		FUNC2(&pdev->ptrlock, flags);

		/* We're done with read_buffer, tack it to the end of the empty buffer list */
		if (pdev->empty_frames == NULL) {
			pdev->empty_frames = pdev->read_frame;
			pdev->empty_frames_tail = pdev->empty_frames;
		}
		else {
			pdev->empty_frames_tail->next = pdev->read_frame;
			pdev->empty_frames_tail = pdev->read_frame;
		}
		pdev->read_frame = NULL;
	}
	FUNC3(&pdev->ptrlock, flags);
	return ret;
}