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
struct i2400m_work {int /*<<< orphan*/  ws; int /*<<< orphan*/  i2400m; } ;
struct i2400m {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  FUNC1 (struct i2400m*) ; 
 struct i2400m_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct i2400m *i2400m,
			 void (*fn)(struct work_struct *), gfp_t gfp_flags)
{
	int result;
	struct i2400m_work *iw;

	result = -ENOMEM;
	iw = FUNC2(sizeof(*iw), gfp_flags);
	if (iw == NULL)
		goto error_kzalloc;
	iw->i2400m = FUNC1(i2400m);
	FUNC0(&iw->ws, fn);
	result = FUNC3(&iw->ws);
	if (result == 0)
		result = -ENXIO;
error_kzalloc:
	return result;
}