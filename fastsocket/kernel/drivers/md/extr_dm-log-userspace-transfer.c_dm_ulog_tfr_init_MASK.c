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
struct cn_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM_ULOG_PREALLOCED_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cn_ulog_callback ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* prealloced_cn_msg ; 
 void* prealloced_ulog_tfr ; 
 int /*<<< orphan*/  receiving_list ; 
 int /*<<< orphan*/  ulog_cn_id ; 

int FUNC4(void)
{
	int r;
	void *prealloced;

	FUNC0(&receiving_list);

	prealloced = FUNC3(DM_ULOG_PREALLOCED_SIZE, GFP_KERNEL);
	if (!prealloced)
		return -ENOMEM;

	prealloced_cn_msg = prealloced;
	prealloced_ulog_tfr = prealloced + sizeof(struct cn_msg);

	r = FUNC1(&ulog_cn_id, "dmlogusr", cn_ulog_callback);
	if (r) {
		FUNC2(&ulog_cn_id);
		return r;
	}

	return 0;
}