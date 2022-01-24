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
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 int PARITY_MASK ; 
 scalar_t__ SCSI_Cntl ; 
 scalar_t__ SCSI_Mode_Cntl ; 
 int SUCCESS ; 
 scalar_t__ TMC_Cntl ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 scalar_t__ port_base ; 

int FUNC4(struct scsi_cmnd *SCpnt)
{
   unsigned long flags;

   FUNC2(flags);

   FUNC3(1, port_base + SCSI_Cntl);
   FUNC0( 2 );
   FUNC3(0, port_base + SCSI_Cntl);
   FUNC0( 115 );
   FUNC3(0, port_base + SCSI_Mode_Cntl);
   FUNC3(PARITY_MASK, port_base + TMC_Cntl);

   FUNC1(flags);
   return SUCCESS;
}