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
struct iscsi_cls_session {unsigned int target_id; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 struct iscsi_cls_session* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct iscsi_cls_session *session;
	unsigned long flags;
	int err = 0;

	if (!FUNC1(dev))
		return 0;

	session = FUNC0(dev);
	FUNC2(&session->lock, flags);
	if (*((unsigned int *) data) == session->target_id)
		err = -EEXIST;
	FUNC3(&session->lock, flags);
	return err;
}