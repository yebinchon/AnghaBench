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
struct c2_vq_req {int /*<<< orphan*/  reply_ready; int /*<<< orphan*/  refcnt; int /*<<< orphan*/ * qp; int /*<<< orphan*/ * cm_id; scalar_t__ event; scalar_t__ reply_msg; int /*<<< orphan*/  wait_object; } ;
struct c2_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct c2_vq_req* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct c2_vq_req *FUNC3(struct c2_dev *c2dev)
{
	struct c2_vq_req *r;

	r = FUNC2(sizeof(struct c2_vq_req), GFP_KERNEL);
	if (r) {
		FUNC1(&r->wait_object);
		r->reply_msg = 0;
		r->event = 0;
		r->cm_id = NULL;
		r->qp = NULL;
		FUNC0(&r->refcnt, 1);
		FUNC0(&r->reply_ready, 0);
	}
	return r;
}