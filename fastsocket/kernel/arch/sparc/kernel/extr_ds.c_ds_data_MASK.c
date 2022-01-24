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
struct ds_queue_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  req; struct ds_info* dp; } ;
struct ds_msg_tag {int dummy; } ;
struct ds_info {int dummy; } ;
struct ds_data {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ds_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds_wait ; 
 int /*<<< orphan*/  ds_work_list ; 
 struct ds_queue_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ds_msg_tag*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ds_info *dp, struct ds_msg_tag *pkt, int len)
{
	struct ds_data *dpkt = (struct ds_data *) pkt;
	struct ds_queue_entry *qp;

	qp = FUNC1(sizeof(struct ds_queue_entry) + len, GFP_ATOMIC);
	if (!qp) {
		FUNC0(dp, dpkt->handle);
	} else {
		qp->dp = dp;
		FUNC3(&qp->req, pkt, len);
		FUNC2(&qp->list, &ds_work_list);
		FUNC4(&ds_wait);
	}
	return 0;
}