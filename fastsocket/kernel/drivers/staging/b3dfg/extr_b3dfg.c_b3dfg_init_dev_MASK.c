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
typedef  int u32 ;
struct b3dfg_dev {int frame_size; int /*<<< orphan*/  triplets_dropped_lock; int /*<<< orphan*/  cstate_lock; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  buffer_waitqueue; int /*<<< orphan*/  buffer_queue; struct b3dfg_buffer* buffers; } ;
struct b3dfg_buffer {int /*<<< orphan*/  list; int /*<<< orphan*/ * frame; } ;

/* Variables and functions */
 int B3DFG_FRAMES_PER_BUFFER ; 
 int /*<<< orphan*/  B3D_REG_FRM_SIZE ; 
 int /*<<< orphan*/  B3D_REG_HW_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int b3dfg_nbuf ; 
 int FUNC1 (struct b3dfg_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b3dfg_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b3dfg_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct b3dfg_buffer* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct b3dfg_dev *fgdev)
{
	int i, j;
	u32 frm_size = FUNC1(fgdev, B3D_REG_FRM_SIZE);

	/* Disable interrupts. In abnormal circumstances (e.g. after a crash)
	 * the board may still be transmitting from the previous session. If we
	 * ensure that interrupts are disabled before we later enable them, we
	 * are sure to capture a triplet from the start, rather than starting
	 * from frame 2 or 3. Disabling interrupts causes the FG to throw away
	 * all buffered data and stop buffering more until interrupts are
	 * enabled again.
	 */
	FUNC2(fgdev, B3D_REG_HW_CTRL, 0);

	fgdev->frame_size = frm_size * 4096;
	fgdev->buffers = FUNC6(sizeof(struct b3dfg_buffer) * b3dfg_nbuf,
				 GFP_KERNEL);
	if (!fgdev->buffers)
		goto err_no_buf;
	for (i = 0; i < b3dfg_nbuf; i++) {
		struct b3dfg_buffer *buf = &fgdev->buffers[i];
		for (j = 0; j < B3DFG_FRAMES_PER_BUFFER; j++) {
			buf->frame[j] = FUNC5(fgdev->frame_size, GFP_KERNEL);
			if (!buf->frame[j])
				goto err_no_mem;
		}
		FUNC0(&buf->list);
	}

	FUNC0(&fgdev->buffer_queue);
	FUNC4(&fgdev->buffer_waitqueue);
	FUNC7(&fgdev->buffer_lock);
	FUNC7(&fgdev->cstate_lock);
	FUNC7(&fgdev->triplets_dropped_lock);
	return 0;

err_no_mem:
	FUNC3(fgdev);
err_no_buf:
	return -ENOMEM;
}