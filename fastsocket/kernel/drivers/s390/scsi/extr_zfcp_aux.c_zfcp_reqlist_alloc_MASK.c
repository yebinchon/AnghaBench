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
struct zfcp_adapter {int /*<<< orphan*/ * req_list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int REQUEST_LIST_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct zfcp_adapter *adapter)
{
	int idx;

	adapter->req_list = FUNC1(REQUEST_LIST_SIZE, sizeof(struct list_head),
				    GFP_KERNEL);
	if (!adapter->req_list)
		return -ENOMEM;

	for (idx = 0; idx < REQUEST_LIST_SIZE; idx++)
		FUNC0(&adapter->req_list[idx]);
	return 0;
}