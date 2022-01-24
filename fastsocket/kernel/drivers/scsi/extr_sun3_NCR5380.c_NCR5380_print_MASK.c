#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct Scsi_Host {int dummy; } ;
struct TYPE_8__ {int mask; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int mask; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int mask; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int mask; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_AND_STATUS_REG ; 
 int /*<<< orphan*/  CURRENT_SCSI_DATA_REG ; 
 int /*<<< orphan*/  INITIATOR_COMMAND_REG ; 
 int /*<<< orphan*/  MODE_REG ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_REG ; 
 TYPE_4__* basrs ; 
 TYPE_3__* icrs ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_2__* mrs ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 TYPE_1__* signals ; 

__attribute__((used)) static void FUNC4(struct Scsi_Host *instance) {
    unsigned char status, data, basr, mr, icr, i;
    unsigned long flags;

    FUNC2(flags);
    data = FUNC0(CURRENT_SCSI_DATA_REG);
    status = FUNC0(STATUS_REG);
    mr = FUNC0(MODE_REG);
    icr = FUNC0(INITIATOR_COMMAND_REG);
    basr = FUNC0(BUS_AND_STATUS_REG);
    FUNC1(flags);
    FUNC3("STATUS_REG: %02x ", status);
    for (i = 0; signals[i].mask ; ++i) 
	if (status & signals[i].mask)
	    FUNC3(",%s", signals[i].name);
    FUNC3("\nBASR: %02x ", basr);
    for (i = 0; basrs[i].mask ; ++i) 
	if (basr & basrs[i].mask)
	    FUNC3(",%s", basrs[i].name);
    FUNC3("\nICR: %02x ", icr);
    for (i = 0; icrs[i].mask; ++i) 
	if (icr & icrs[i].mask)
	    FUNC3(",%s", icrs[i].name);
    FUNC3("\nMODE: %02x ", mr);
    for (i = 0; mrs[i].mask; ++i) 
	if (mr & mrs[i].mask)
	    FUNC3(",%s", mrs[i].name);
    FUNC3("\n");
}