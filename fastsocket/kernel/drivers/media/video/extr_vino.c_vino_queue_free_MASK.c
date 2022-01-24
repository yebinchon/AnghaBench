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
struct vino_framebuffer_queue {scalar_t__ magic; scalar_t__ type; int /*<<< orphan*/  queue_mutex; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ VINO_MEMORY_MMAP ; 
 scalar_t__ VINO_QUEUE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vino_framebuffer_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vino_framebuffer_queue *q)
{
	FUNC0("vino_queue_free():\n");

	if (q->magic != VINO_QUEUE_MAGIC)
		return;
	if (q->type != VINO_MEMORY_MMAP)
		return;

	FUNC1(&q->queue_mutex);

	FUNC3(q, q->length);

	FUNC2(&q->queue_mutex);
}