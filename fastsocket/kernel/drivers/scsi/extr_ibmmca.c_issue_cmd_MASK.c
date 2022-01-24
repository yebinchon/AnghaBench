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
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Scsi_Host*) ; 
 int IM_BUSY ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC2 (struct Scsi_Host*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct Scsi_Host *shpnt, unsigned long cmd_reg,
		      unsigned char attn_reg)
{
	unsigned long flags;
	/* must wait for attention reg not busy */
	while (1) {
		FUNC6(shpnt->host_lock, flags);
		if (!(FUNC3(FUNC2(shpnt)) & IM_BUSY))
			break;
		FUNC7(shpnt->host_lock, flags);
	}
	/* write registers and enable system interrupts */
	FUNC5(cmd_reg, FUNC1(shpnt));
	FUNC4(attn_reg, FUNC0(shpnt));
	FUNC7(shpnt->host_lock, flags);
}