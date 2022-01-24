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
struct c2_vq_req {scalar_t__ reply_msg; int /*<<< orphan*/  refcnt; } ;
struct c2_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct c2_vq_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_dev*,void*) ; 

void FUNC3(struct c2_dev *c2dev, struct c2_vq_req *r)
{
	if (FUNC0(&r->refcnt)) {
		if (r->reply_msg != 0)
			FUNC2(c2dev,
				       (void *) (unsigned long) r->reply_msg);
		FUNC1(r);
	}
}