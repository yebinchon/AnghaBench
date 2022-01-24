#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vpif_fh {int /*<<< orphan*/ * io_allowed; struct channel_obj* channel; } ;
struct videobuf_buffer {int memory; scalar_t__ state; unsigned long boff; int /*<<< orphan*/  stream; int /*<<< orphan*/  baddr; int /*<<< orphan*/  bsize; } ;
struct TYPE_7__ {int /*<<< orphan*/  userptr; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; int memory; TYPE_2__ m; int /*<<< orphan*/  length; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  vb_lock; int /*<<< orphan*/  stream; int /*<<< orphan*/  field; struct videobuf_buffer** bufs; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct common_obj {TYPE_3__ buffer_queue; scalar_t__ cbtm_off; scalar_t__ ctop_off; scalar_t__ ybtm_off; scalar_t__ ytop_off; int /*<<< orphan*/  (* set_addr ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;struct videobuf_buffer* next_frm; scalar_t__ started; struct videobuf_buffer* cur_frm; int /*<<< orphan*/  dma_queue; TYPE_1__ fmt; } ;
struct channel_obj {scalar_t__ field_id; struct common_obj* common; } ;

/* Variables and functions */
 int EACCES ; 
 int EINVAL ; 
 scalar_t__ V4L2_BUF_TYPE_SLICED_VBI_OUTPUT ; 
#define  V4L2_MEMORY_MMAP 129 
#define  V4L2_MEMORY_USERPTR 128 
 scalar_t__ VIDEOBUF_ACTIVE ; 
 scalar_t__ VIDEOBUF_NEEDS_INIT ; 
 scalar_t__ VIDEOBUF_QUEUED ; 
 size_t VPIF_VIDEO_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC7 (TYPE_3__*,struct v4l2_buffer*) ; 
 int FUNC8 (TYPE_3__*,struct videobuf_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,struct videobuf_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct file *file, void *priv, struct v4l2_buffer *buf)
{

	struct vpif_fh *fh = priv;
	struct channel_obj *ch = fh->channel;
	struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
	struct v4l2_buffer tbuf = *buf;
	struct videobuf_buffer *buf1;
	unsigned long addr = 0;
	unsigned long flags;
	int ret = 0;

	if (common->fmt.type != tbuf.type)
		return -EINVAL;

	if (!fh->io_allowed[VPIF_VIDEO_INDEX]) {
		FUNC10("fh->io_allowed\n");
		return -EACCES;
	}

	if (!(FUNC1(&common->dma_queue)) ||
	    (common->cur_frm != common->next_frm) ||
	    !(common->started) ||
	    (common->started && (0 == ch->field_id)))
		return FUNC7(&common->buffer_queue, buf);

	/* bufferqueue is empty store buffer address in VPIF registers */
	FUNC4(&common->buffer_queue.vb_lock);
	buf1 = common->buffer_queue.bufs[tbuf.index];
	if (buf1->memory != tbuf.memory) {
		FUNC10("invalid buffer type\n");
		goto qbuf_exit;
	}

	if ((buf1->state == VIDEOBUF_QUEUED) ||
	    (buf1->state == VIDEOBUF_ACTIVE)) {
		FUNC10("invalid state\n");
		goto qbuf_exit;
	}

	switch (buf1->memory) {
	case V4L2_MEMORY_MMAP:
		if (buf1->baddr == 0)
			goto qbuf_exit;
		break;

	case V4L2_MEMORY_USERPTR:
		if (tbuf.length < buf1->bsize)
			goto qbuf_exit;

		if ((VIDEOBUF_NEEDS_INIT != buf1->state)
			    && (buf1->baddr != tbuf.m.userptr))
			FUNC9(&common->buffer_queue, buf1);
			buf1->baddr = tbuf.m.userptr;
		break;

	default:
		goto qbuf_exit;
	}

	FUNC3(flags);
	ret = FUNC8(&common->buffer_queue, buf1,
					common->buffer_queue.field);
	if (ret < 0) {
		FUNC2(flags);
		goto qbuf_exit;
	}

	buf1->state = VIDEOBUF_ACTIVE;
	addr = buf1->boff;
	common->next_frm = buf1;
	if (tbuf.type != V4L2_BUF_TYPE_SLICED_VBI_OUTPUT) {
		common->set_addr((addr + common->ytop_off),
				 (addr + common->ybtm_off),
				 (addr + common->ctop_off),
				 (addr + common->cbtm_off));
	}

	FUNC2(flags);
	FUNC0(&buf1->stream, &common->buffer_queue.stream);
	FUNC5(&common->buffer_queue.vb_lock);
	return 0;

qbuf_exit:
	FUNC5(&common->buffer_queue.vb_lock);
	return -EINVAL;
}