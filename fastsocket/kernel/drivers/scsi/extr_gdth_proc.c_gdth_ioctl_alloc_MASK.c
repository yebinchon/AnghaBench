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
struct TYPE_3__ {char* pscratch; int /*<<< orphan*/  smp_lock; int /*<<< orphan*/  pdev; int /*<<< orphan*/  scratch_phys; scalar_t__ scratch_busy; } ;
typedef  TYPE_1__ gdth_ha_str ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int GDTH_SCRATCH ; 
 scalar_t__ TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(gdth_ha_str *ha, int size, int scratch,
                              ulong64 *paddr)
{
    ulong flags;
    char *ret_val;

    if (size == 0)
        return NULL;

    FUNC1(&ha->smp_lock, flags);

    if (!ha->scratch_busy && size <= GDTH_SCRATCH) {
        ha->scratch_busy = TRUE;
        ret_val = ha->pscratch;
        *paddr = ha->scratch_phys;
    } else if (scratch) {
        ret_val = NULL;
    } else {
        dma_addr_t dma_addr;

        ret_val = FUNC0(ha->pdev, size, &dma_addr);
        *paddr = dma_addr;
    }

    FUNC2(&ha->smp_lock, flags);
    return ret_val;
}