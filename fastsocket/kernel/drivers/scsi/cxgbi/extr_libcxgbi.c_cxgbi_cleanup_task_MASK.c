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
struct iscsi_task {int /*<<< orphan*/  hdr_itt; } ;
struct cxgbi_task_data {scalar_t__ skb; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct cxgbi_task_data* FUNC1 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct iscsi_task*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cxgbi_task_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_task*,int /*<<< orphan*/ ) ; 

void FUNC6(struct iscsi_task *task)
{
	struct cxgbi_task_data *tdata = FUNC1(task);

	FUNC3(1 << CXGBI_DBG_ISCSI,
		"task 0x%p, skb 0x%p, itt 0x%x.\n",
		task, tdata->skb, task->hdr_itt);

	/*  never reached the xmit task callout */
	if (tdata->skb)
		FUNC0(tdata->skb);
	FUNC4(tdata, 0, sizeof(*tdata));

	FUNC5(task, task->hdr_itt);
	FUNC2(task);
}