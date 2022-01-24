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
struct i2400m_work {int /*<<< orphan*/  ws; int /*<<< orphan*/  pl; int /*<<< orphan*/  i2400m; } ;
struct i2400m {int /*<<< orphan*/ * work_queue; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  FUNC2 (struct i2400m*) ; 
 struct i2400m_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC6(struct i2400m *i2400m,
		      void (*fn)(struct work_struct *), gfp_t gfp_flags,
		      const void *pl, size_t pl_size)
{
	int result;
	struct i2400m_work *iw;

	FUNC0(i2400m->work_queue == NULL);
	result = -ENOMEM;
	iw = FUNC3(sizeof(*iw) + pl_size, gfp_flags);
	if (iw == NULL)
		goto error_kzalloc;
	iw->i2400m = FUNC2(i2400m);
	FUNC4(iw->pl, pl, pl_size);
	FUNC1(&iw->ws, fn);
	result = FUNC5(i2400m->work_queue, &iw->ws);
error_kzalloc:
	return result;
}