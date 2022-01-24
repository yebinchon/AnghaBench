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
struct io_context {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct io_context*) ; 

void FUNC4(struct io_context **pdst, struct io_context **psrc)
{
	struct io_context *src = *psrc;
	struct io_context *dst = *pdst;

	if (src) {
		FUNC0(FUNC2(&src->refcount) == 0);
		FUNC1(&src->refcount);
		FUNC3(dst);
		*pdst = src;
	}
}