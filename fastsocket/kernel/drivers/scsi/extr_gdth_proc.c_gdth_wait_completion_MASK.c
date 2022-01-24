#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ unchar ;
typedef  int /*<<< orphan*/  ulong ;
struct gdth_cmndinfo {scalar_t__ wait_for_completion; } ;
struct TYPE_10__ {int /*<<< orphan*/  smp_lock; TYPE_1__* cmd_tab; } ;
typedef  TYPE_3__ gdth_ha_str ;
struct TYPE_11__ {TYPE_2__* device; } ;
struct TYPE_9__ {scalar_t__ channel; scalar_t__ id; } ;
struct TYPE_8__ {TYPE_4__* cmnd; } ;
typedef  TYPE_4__ Scsi_Cmnd ;

/* Variables and functions */
 int GDTH_MAXCMDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct gdth_cmndinfo* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(gdth_ha_str *ha, int busnum, int id)
{
    ulong flags;
    int i;
    Scsi_Cmnd *scp;
    struct gdth_cmndinfo *cmndinfo;
    unchar b, t;

    FUNC3(&ha->smp_lock, flags);

    for (i = 0; i < GDTH_MAXCMDS; ++i) {
        scp = ha->cmd_tab[i].cmnd;
        cmndinfo = FUNC2(scp);

        b = scp->device->channel;
        t = scp->device->id;
        if (!FUNC0(scp) && t == (unchar)id && 
            b == (unchar)busnum) {
            cmndinfo->wait_for_completion = 0;
            FUNC4(&ha->smp_lock, flags);
            while (!cmndinfo->wait_for_completion)
                FUNC1();
            FUNC3(&ha->smp_lock, flags);
        }
    }
    FUNC4(&ha->smp_lock, flags);
}