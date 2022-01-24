#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ FDFSStorageBrief ;

/* Variables and functions */
 scalar_t__ g_if_trunker_self ; 
 int /*<<< orphan*/  g_my_server_id_str ; 
 int FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC3(const FDFSStorageBrief *pStorage)
{
	int result;

	if (FUNC1(pStorage->id, g_my_server_id_str) == 0)
	{
		return 0;
	}

	result = FUNC0(pStorage);
	if (result == 0)
	{
		if (g_if_trunker_self)
		{
			result = FUNC2(pStorage);
		}
	}

	return result;
}