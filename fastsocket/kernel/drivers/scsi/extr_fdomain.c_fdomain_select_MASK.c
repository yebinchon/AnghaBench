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

/* Variables and functions */
 int PARITY_MASK ; 
 scalar_t__ SCSI_Cntl ; 
 scalar_t__ SCSI_Data_NoACK ; 
 scalar_t__ SCSI_Status ; 
 scalar_t__ TMC_Cntl ; 
 int adapter_mask ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 scalar_t__ port_base ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5( int target )
{
   int           status;
   unsigned long timeout;
#if ERRORS_ONLY
   static int    flag = 0;
#endif

   FUNC3(0x82, port_base + SCSI_Cntl); /* Bus Enable + Select */
   FUNC3(adapter_mask | (1 << target), port_base + SCSI_Data_NoACK);

   /* Stop arbitration and enable parity */
   FUNC3(PARITY_MASK, port_base + TMC_Cntl); 

   timeout = 350;			/* 350 msec */

   do {
      status = FUNC1(port_base + SCSI_Status); /* Read adapter status */
      if (status & 1) {			/* Busy asserted */
	 /* Enable SCSI Bus (on error, should make bus idle with 0) */
	 FUNC3(0x80, port_base + SCSI_Cntl);
	 return 0;
      }
      FUNC2(1);			/* wait one msec */
   } while (--timeout);
   /* Make bus idle */
   FUNC0();
#if EVERY_ACCESS
   if (!target) printk( "Selection failed\n" );
#endif
#if ERRORS_ONLY
   if (!target) {
      if (!flag) /* Skip first failure for all chips. */
	    ++flag;
      else
	    printk( "scsi: <fdomain> Selection failed\n" );
   }
#endif
   return 1;
}