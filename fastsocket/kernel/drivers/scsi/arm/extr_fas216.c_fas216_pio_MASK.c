#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scsi_pointer {scalar_t__ this_residual; } ;
typedef  scalar_t__ fasdmadir_t ;
struct TYPE_7__ {struct scsi_pointer SCp; } ;
struct TYPE_8__ {TYPE_1__ scsi; } ;
typedef  TYPE_2__ FAS216_Info ;

/* Variables and functions */
 scalar_t__ DMA_OUT ; 
 int /*<<< orphan*/  REG_FF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_pointer*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_pointer*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_pointer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(FAS216_Info *info, fasdmadir_t direction)
{
	struct scsi_pointer *SCp = &info->scsi.SCp;

	FUNC0(info);

	if (direction == DMA_OUT)
		FUNC2(info, REG_FF, FUNC3(SCp));
	else
		FUNC5(SCp, FUNC1(info, REG_FF));

	if (SCp->this_residual == 0)
		FUNC4(SCp);
}