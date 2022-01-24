#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ FDFSStorageBrief ;

/* Variables and functions */
 int /*<<< orphan*/  g_my_server_id_str ; 
 scalar_t__ g_use_storage_id ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC2(const FDFSStorageBrief *pStorageBrief)
{
	if (g_use_storage_id)
	{
		return FUNC1(pStorageBrief->id, g_my_server_id_str) == 0;
	}
	else
	{
		return FUNC0(pStorageBrief->ip_addr);
	}
}