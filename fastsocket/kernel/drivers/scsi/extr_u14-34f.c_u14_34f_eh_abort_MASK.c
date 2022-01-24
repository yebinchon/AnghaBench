#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  serial_number; int /*<<< orphan*/ * host_scribble; TYPE_2__* device; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_10__ {scalar_t__* cp_stat; TYPE_3__* cp; } ;
struct TYPE_9__ {unsigned int can_queue; scalar_t__ io_port; } ;
struct TYPE_8__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ ABORTING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int DID_ABORT ; 
 int FAILED ; 
 scalar_t__ FREE ; 
 TYPE_5__* FUNC1 (unsigned int) ; 
 scalar_t__ IN_RESET ; 
 scalar_t__ IN_USE ; 
 int IRQ_ASSERTED ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ LOCKED ; 
 int /*<<< orphan*/  MAXLOOP ; 
 scalar_t__ READY ; 
 scalar_t__ REG_SYS_INTR ; 
 int SUCCESS ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,unsigned int,...) ; 
 TYPE_4__** sh ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct scsi_cmnd *SCarg) {
   unsigned int i, j;

   j = ((struct hostdata *) SCarg->device->host->hostdata)->board_number;

   if (SCarg->host_scribble == NULL) {
      FUNC5(KERN_INFO, SCarg, "abort, pid %ld inactive.\n",
             SCarg->serial_number);
      return SUCCESS;
      }

   i = *(unsigned int *)SCarg->host_scribble;
   FUNC5(KERN_INFO, SCarg, "abort, mbox %d, pid %ld.\n",
	       i, SCarg->serial_number);

   if (i >= sh[j]->can_queue)
      FUNC3("%s: abort, invalid SCarg->host_scribble.\n", FUNC0(j));

   if (FUNC8(sh[j]->io_port, MAXLOOP)) {
      FUNC4("%s: abort, timeout error.\n", FUNC0(j));
      return FAILED;
      }

   if (FUNC1(j)->cp_stat[i] == FREE) {
      FUNC4("%s: abort, mbox %d is free.\n", FUNC0(j), i);
      return SUCCESS;
      }

   if (FUNC1(j)->cp_stat[i] == IN_USE) {
      FUNC4("%s: abort, mbox %d is in use.\n", FUNC0(j), i);

      if (SCarg != FUNC1(j)->cp[i].SCpnt)
         FUNC3("%s: abort, mbox %d, SCarg %p, cp SCpnt %p.\n",
               FUNC0(j), i, SCarg, FUNC1(j)->cp[i].SCpnt);

      if (FUNC2(sh[j]->io_port + REG_SYS_INTR) & IRQ_ASSERTED)
         FUNC4("%s: abort, mbox %d, interrupt pending.\n", FUNC0(j), i);

      return FAILED;
      }

   if (FUNC1(j)->cp_stat[i] == IN_RESET) {
      FUNC4("%s: abort, mbox %d is in reset.\n", FUNC0(j), i);
      return FAILED;
      }

   if (FUNC1(j)->cp_stat[i] == LOCKED) {
      FUNC4("%s: abort, mbox %d is locked.\n", FUNC0(j), i);
      return SUCCESS;
      }

   if (FUNC1(j)->cp_stat[i] == READY || FUNC1(j)->cp_stat[i] == ABORTING) {
      FUNC7(i, j);
      SCarg->result = DID_ABORT << 16;
      SCarg->host_scribble = NULL;
      FUNC1(j)->cp_stat[i] = FREE;
      FUNC4("%s, abort, mbox %d ready, DID_ABORT, pid %ld done.\n",
             FUNC0(j), i, SCarg->serial_number);
      SCarg->scsi_done(SCarg);
      return SUCCESS;
      }

   FUNC3("%s: abort, mbox %d, invalid cp_stat.\n", FUNC0(j), i);
}