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
struct TYPE_3__ {int server_count; int /*<<< orphan*/ * servers; } ;
typedef  TYPE_1__ GroupArray ;
typedef  int /*<<< orphan*/  FDHTServerInfo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(GroupArray *pGroupArray, \
		FDHTServerInfo *pInsertedServer)
{
	FDHTServerInfo *pCurrent;

	for (pCurrent=pGroupArray->servers + pGroupArray->server_count; \
		pCurrent > pGroupArray->servers; pCurrent--)
	{
		if (FUNC0(pCurrent-1, pInsertedServer)<0)
		{
			break;
		}

		FUNC1(pCurrent,  pCurrent - 1, sizeof(FDHTServerInfo));
	}

	FUNC1(pCurrent,  pInsertedServer, sizeof(FDHTServerInfo));
}