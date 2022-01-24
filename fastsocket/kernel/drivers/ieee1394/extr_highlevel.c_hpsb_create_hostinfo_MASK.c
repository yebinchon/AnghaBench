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
struct hpsb_host {int dummy; } ;
struct hpsb_highlevel {int /*<<< orphan*/  host_info_lock; int /*<<< orphan*/  host_info_list; int /*<<< orphan*/  name; } ;
struct hl_host_info {size_t size; int /*<<< orphan*/  list; struct hpsb_host* host; struct hl_host_info* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct hl_host_info* FUNC1 (struct hpsb_highlevel*,struct hpsb_host*) ; 
 struct hl_host_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void *FUNC6(struct hpsb_highlevel *hl, struct hpsb_host *host,
			   size_t data_size)
{
	struct hl_host_info *hi;
	void *data;
	unsigned long flags;

	hi = FUNC1(hl, host);
	if (hi) {
		FUNC0("%s called hpsb_create_hostinfo when hostinfo already"
			 " exists", hl->name);
		return NULL;
	}

	hi = FUNC2(sizeof(*hi) + data_size, GFP_ATOMIC);
	if (!hi)
		return NULL;

	if (data_size) {
		data = hi->data = hi + 1;
		hi->size = data_size;
	} else
		data = hi;

	hi->host = host;

	FUNC4(&hl->host_info_lock, flags);
	FUNC3(&hi->list, &hl->host_info_list);
	FUNC5(&hl->host_info_lock, flags);

	return data;
}