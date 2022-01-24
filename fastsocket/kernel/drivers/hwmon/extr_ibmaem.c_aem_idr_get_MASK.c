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
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  aem_idr ; 
 int /*<<< orphan*/  aem_idr_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(int *id)
{
	int i, err;

again:
	if (FUNC4(!FUNC1(&aem_idr, GFP_KERNEL)))
		return -ENOMEM;

	FUNC2(&aem_idr_lock);
	err = FUNC0(&aem_idr, NULL, &i);
	FUNC3(&aem_idr_lock);

	if (FUNC4(err == -EAGAIN))
		goto again;
	else if (FUNC4(err))
		return err;

	*id = i & MAX_ID_MASK;
	return 0;
}