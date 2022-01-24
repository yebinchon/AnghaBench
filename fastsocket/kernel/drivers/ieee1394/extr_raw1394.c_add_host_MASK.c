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
struct host_info {int /*<<< orphan*/  list; int /*<<< orphan*/  file_info_list; struct hpsb_host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  host_count ; 
 int /*<<< orphan*/  host_info_list ; 
 int /*<<< orphan*/  host_info_lock ; 
 int /*<<< orphan*/  internal_generation ; 
 struct host_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct hpsb_host *host)
{
	struct host_info *hi;
	unsigned long flags;

	hi = FUNC2(sizeof(*hi), GFP_KERNEL);

	if (hi) {
		FUNC0(&hi->list);
		hi->host = host;
		FUNC0(&hi->file_info_list);

		FUNC4(&host_info_lock, flags);
		FUNC3(&hi->list, &host_info_list);
		host_count++;
		FUNC5(&host_info_lock, flags);
	}

	FUNC1(&internal_generation);
}