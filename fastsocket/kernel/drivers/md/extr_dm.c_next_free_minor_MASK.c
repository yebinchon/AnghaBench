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

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MINORBITS ; 
 int /*<<< orphan*/  MINOR_ALLOCED ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int *minor)
{
	int r, m;

	r = FUNC1(&_minor_idr, GFP_KERNEL);
	if (!r)
		return -ENOMEM;

	FUNC3(&_minor_lock);

	r = FUNC0(&_minor_idr, MINOR_ALLOCED, &m);
	if (r)
		goto out;

	if (m >= (1 << MINORBITS)) {
		FUNC2(&_minor_idr, m);
		r = -ENOSPC;
		goto out;
	}

	*minor = m;

out:
	FUNC4(&_minor_lock);
	return r;
}