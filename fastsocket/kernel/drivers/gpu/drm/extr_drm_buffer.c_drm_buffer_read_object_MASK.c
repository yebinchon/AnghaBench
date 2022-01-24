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
struct drm_buffer {int /*<<< orphan*/ ** data; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_buffer*,int) ; 
 int FUNC1 (struct drm_buffer*) ; 
 int FUNC2 (struct drm_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int) ; 

void *FUNC4(struct drm_buffer *buf,
		int objsize, void *stack_obj)
{
	int idx = FUNC1(buf);
	int page = FUNC2(buf);
	void *obj = NULL;

	if (idx + objsize <= PAGE_SIZE) {
		obj = &buf->data[page][idx];
	} else {
		/* The object is split which forces copy to temporary object.*/
		int beginsz = PAGE_SIZE - idx;
		FUNC3(stack_obj, &buf->data[page][idx], beginsz);

		FUNC3(stack_obj + beginsz, &buf->data[page + 1][0],
				objsize - beginsz);

		obj = stack_obj;
	}

	FUNC0(buf, objsize);
	return obj;
}