#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  phase; } ;
struct TYPE_4__ {int result; TYPE_1__ SCp; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int FAILED ; 
 int SUCCESS ; 
 int /*<<< orphan*/  aborted ; 
 TYPE_2__* current_SC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  in_command ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct scsi_cmnd *SCpnt)
{
#if EVERY_ACCESS || ERRORS_ONLY || DEBUG_ABORT
   printk( "scsi: <fdomain> abort " );
#endif

   if (!in_command) {
#if EVERY_ACCESS || ERRORS_ONLY
      printk( " (not in command)\n" );
#endif
      return FAILED;
   } else FUNC3( "\n" );

#if DEBUG_ABORT
   print_info( SCpnt );
#endif

   FUNC0();
   current_SC->SCp.phase |= aborted;
   current_SC->result = DID_ABORT << 16;
   
   /* Aborts are not done well. . . */
   FUNC1(DID_ABORT << 16);
   return SUCCESS;
}