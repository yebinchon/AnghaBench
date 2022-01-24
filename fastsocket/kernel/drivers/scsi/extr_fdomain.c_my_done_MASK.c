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
struct TYPE_3__ {int result; int /*<<< orphan*/  (* scsi_done ) (TYPE_1__*) ;} ;

/* Variables and functions */
 scalar_t__ Interrupt_Cntl ; 
 TYPE_1__* current_SC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ in_command ; 
 scalar_t__ in_interrupt_flag ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ port_base ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(int error)
{
   if (in_command) {
      in_command = 0;
      FUNC1(0x00, port_base + Interrupt_Cntl);
      FUNC0();
      current_SC->result = error;
      if (current_SC->scsi_done)
	    current_SC->scsi_done( current_SC );
      else FUNC2( "scsi: <fdomain> current_SC->scsi_done() == NULL" );
   } else {
      FUNC2( "scsi: <fdomain> my_done() called outside of command\n" );
   }
#if DEBUG_RACE
   in_interrupt_flag = 0;
#endif
}