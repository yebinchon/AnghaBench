#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ type; unsigned int length; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_1__** buffer; } ;
struct vino_framebuffer {int dummy; } ;
struct TYPE_4__ {unsigned int id; scalar_t__ size; scalar_t__ offset; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int VINO_FRAMEBUFFER_COUNT_MAX ; 
 int /*<<< orphan*/  VINO_FRAMEBUFFER_SIZE ; 
 scalar_t__ VINO_MEMORY_MMAP ; 
 scalar_t__ VINO_MEMORY_NONE ; 
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct vino_framebuffer_queue*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct vino_framebuffer_queue *q,
			   unsigned int *length)
{
	unsigned int i;
	int ret = 0;

	FUNC0("vino_queue_init(): length = %d\n", *length);

	if (q->magic == VINO_QUEUE_MAGIC) {
		FUNC0("vino_queue_init(): queue already initialized!\n");
		return -EINVAL;
	}

	if (q->type != VINO_MEMORY_NONE) {
		FUNC0("vino_queue_init(): queue already initialized!\n");
		return -EINVAL;
	}

	if (*length < 1)
		return -EINVAL;

	FUNC3(&q->queue_mutex);

	if (*length > VINO_FRAMEBUFFER_COUNT_MAX)
		*length = VINO_FRAMEBUFFER_COUNT_MAX;

	q->length = 0;

	for (i = 0; i < *length; i++) {
		FUNC0("vino_queue_init(): allocating buffer %d\n", i);
		q->buffer[i] = FUNC2(sizeof(struct vino_framebuffer),
				       GFP_KERNEL);
		if (!q->buffer[i]) {
			FUNC0("vino_queue_init(): kmalloc() failed\n");
			ret = -ENOMEM;
			break;
		}

		ret = FUNC6(q->buffer[i],
					   VINO_FRAMEBUFFER_SIZE);
		if (ret) {
			FUNC1(q->buffer[i]);
			FUNC0("vino_queue_init(): "
				"vino_allocate_buffer() failed\n");
			break;
		}

		q->buffer[i]->id = i;
		if (i > 0) {
			q->buffer[i]->offset = q->buffer[i - 1]->offset +
				q->buffer[i - 1]->size;
		} else {
			q->buffer[i]->offset = 0;
		}

		FUNC5(&q->buffer[i]->state_lock);

		FUNC0("vino_queue_init(): buffer = %d, offset = %d, "
			"size = %d\n", i, q->buffer[i]->offset,
			q->buffer[i]->size);
	}

	if (ret) {
		FUNC8(q, i);
		*length = 0;
	} else {
		q->length = *length;
		FUNC7(&q->in, q->length);
		FUNC7(&q->out, q->length);
		q->type = VINO_MEMORY_MMAP;
		q->magic = VINO_QUEUE_MAGIC;
	}

	FUNC4(&q->queue_mutex);

	return ret;
}