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
typedef  int /*<<< orphan*/  ulong64 ;
typedef  int /*<<< orphan*/  ulong ;
struct TYPE_3__ {char* pscratch; int /*<<< orphan*/  pdev; int /*<<< orphan*/  smp_lock; int /*<<< orphan*/  scratch_busy; } ;
typedef  TYPE_1__ gdth_ha_str ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(gdth_ha_str *ha, int size, char *buf, ulong64 paddr)
{
    ulong flags;

    if (buf == ha->pscratch) {
	FUNC1(&ha->smp_lock, flags);
        ha->scratch_busy = FALSE;
	FUNC2(&ha->smp_lock, flags);
    } else {
        FUNC0(ha->pdev, size, buf, paddr);
    }
}