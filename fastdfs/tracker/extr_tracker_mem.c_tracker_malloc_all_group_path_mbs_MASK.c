#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ store_path_count; } ;
struct TYPE_5__ {int alloc_size; TYPE_2__** groups; } ;
typedef  TYPE_1__ FDFSGroups ;
typedef  TYPE_2__ FDFSGroupInfo ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC1(FDFSGroups *pGroups)
{
	FDFSGroupInfo **ppGroup;
	FDFSGroupInfo **ppEnd;
	int result;

	ppEnd = pGroups->groups + pGroups->alloc_size;
	for (ppGroup=pGroups->groups; ppGroup<ppEnd; ppGroup++)
	{
		if ((*ppGroup)->store_path_count == 0)
		{
			continue;
		}

		if ((result=FUNC0(*ppGroup)) != 0)
		{
			return result;
		}
	}

	return 0;
}