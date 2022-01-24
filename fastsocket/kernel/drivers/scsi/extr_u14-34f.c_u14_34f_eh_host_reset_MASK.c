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
struct scsi_cmnd {int result; int /*<<< orphan*/  serial_number; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * host_scribble; TYPE_2__* device; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_10__ {int in_reset; scalar_t__* cp_stat; TYPE_3__* cp; scalar_t__** target_to; void*** target_redo; scalar_t__ retries; } ;
struct TYPE_9__ {unsigned int max_channel; unsigned int max_id; unsigned int can_queue; int /*<<< orphan*/  host_lock; scalar_t__ io_port; } ;
struct TYPE_8__ {struct scsi_cmnd* SCpnt; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 scalar_t__ ABORTING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CMD_RESET ; 
 int DID_RESET ; 
 int FAILED ; 
 void* FALSE ; 
 scalar_t__ FREE ; 
 TYPE_5__* FUNC1 (unsigned int) ; 
 int HZ ; 
 scalar_t__ IN_RESET ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ LOCKED ; 
 int /*<<< orphan*/  MAXLOOP ; 
 scalar_t__ READY ; 
 scalar_t__ REG_LCL_INTR ; 
 int SUCCESS ; 
 void* TRUE ; 
 void* do_trace ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__** sh ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct scsi_cmnd *SCarg) {
   unsigned int i, j, k, c, limit = 0;
   unsigned long time;
   int arg_done = FALSE;
   struct scsi_cmnd *SCpnt;

   j = ((struct hostdata *) SCarg->device->host->hostdata)->board_number;
   FUNC5(KERN_INFO, SCarg, "reset, enter, pid %ld.\n", SCarg->serial_number);

   FUNC6(sh[j]->host_lock);

   if (SCarg->host_scribble == NULL)
      FUNC4("%s: reset, pid %ld inactive.\n", FUNC0(j), SCarg->serial_number);

   if (FUNC1(j)->in_reset) {
      FUNC4("%s: reset, exit, already in reset.\n", FUNC0(j));
      FUNC7(sh[j]->host_lock);
      return FAILED;
      }

   if (FUNC11(sh[j]->io_port, MAXLOOP)) {
      FUNC4("%s: reset, exit, timeout error.\n", FUNC0(j));
      FUNC7(sh[j]->host_lock);
      return FAILED;
      }

   FUNC1(j)->retries = 0;

   for (c = 0; c <= sh[j]->max_channel; c++)
      for (k = 0; k < sh[j]->max_id; k++) {
         FUNC1(j)->target_redo[k][c] = TRUE;
         FUNC1(j)->target_to[k][c] = 0;
         }

   for (i = 0; i < sh[j]->can_queue; i++) {

      if (FUNC1(j)->cp_stat[i] == FREE) continue;

      if (FUNC1(j)->cp_stat[i] == LOCKED) {
         FUNC1(j)->cp_stat[i] = FREE;
         FUNC4("%s: reset, locked mbox %d forced free.\n", FUNC0(j), i);
         continue;
         }

      if (!(SCpnt = FUNC1(j)->cp[i].SCpnt))
         FUNC3("%s: reset, mbox %d, SCpnt == NULL.\n", FUNC0(j), i);

      if (FUNC1(j)->cp_stat[i] == READY || FUNC1(j)->cp_stat[i] == ABORTING) {
         FUNC1(j)->cp_stat[i] = ABORTING;
         FUNC4("%s: reset, mbox %d aborting, pid %ld.\n",
                FUNC0(j), i, SCpnt->serial_number);
         }

      else {
         FUNC1(j)->cp_stat[i] = IN_RESET;
         FUNC4("%s: reset, mbox %d in reset, pid %ld.\n",
                FUNC0(j), i, SCpnt->serial_number);
         }

      if (SCpnt->host_scribble == NULL)
         FUNC3("%s: reset, mbox %d, garbled SCpnt.\n", FUNC0(j), i);

      if (*(unsigned int *)SCpnt->host_scribble != i)
         FUNC3("%s: reset, mbox %d, index mismatch.\n", FUNC0(j), i);

      if (SCpnt->scsi_done == NULL)
         FUNC3("%s: reset, mbox %d, SCpnt->scsi_done == NULL.\n", FUNC0(j), i);

      if (SCpnt == SCarg) arg_done = TRUE;
      }

   if (FUNC11(sh[j]->io_port, MAXLOOP)) {
      FUNC4("%s: reset, cannot reset, timeout error.\n", FUNC0(j));
      FUNC7(sh[j]->host_lock);
      return FAILED;
      }

   FUNC2(CMD_RESET, sh[j]->io_port + REG_LCL_INTR);
   FUNC4("%s: reset, board reset done, enabling interrupts.\n", FUNC0(j));

#if defined(DEBUG_RESET)
   do_trace = TRUE;
#endif

   FUNC1(j)->in_reset = TRUE;

   FUNC7(sh[j]->host_lock);
   time = jiffies;
   while ((jiffies - time) < (10 * HZ) && limit++ < 200000) FUNC9(100L);
   FUNC6(sh[j]->host_lock);

   FUNC4("%s: reset, interrupts disabled, loops %d.\n", FUNC0(j), limit);

   for (i = 0; i < sh[j]->can_queue; i++) {

      if (FUNC1(j)->cp_stat[i] == IN_RESET) {
         SCpnt = FUNC1(j)->cp[i].SCpnt;
         FUNC10(i, j);
         SCpnt->result = DID_RESET << 16;
         SCpnt->host_scribble = NULL;

         /* This mailbox is still waiting for its interrupt */
         FUNC1(j)->cp_stat[i] = LOCKED;

         FUNC4("%s, reset, mbox %d locked, DID_RESET, pid %ld done.\n",
                FUNC0(j), i, SCpnt->serial_number);
         }

      else if (FUNC1(j)->cp_stat[i] == ABORTING) {
         SCpnt = FUNC1(j)->cp[i].SCpnt;
         FUNC10(i, j);
         SCpnt->result = DID_RESET << 16;
         SCpnt->host_scribble = NULL;

         /* This mailbox was never queued to the adapter */
         FUNC1(j)->cp_stat[i] = FREE;

         FUNC4("%s, reset, mbox %d aborting, DID_RESET, pid %ld done.\n",
                FUNC0(j), i, SCpnt->serial_number);
         }

      else

         /* Any other mailbox has already been set free by interrupt */
         continue;

      SCpnt->scsi_done(SCpnt);
      }

   FUNC1(j)->in_reset = FALSE;
   do_trace = FALSE;

   if (arg_done) FUNC4("%s: reset, exit, pid %ld done.\n", FUNC0(j), SCarg->serial_number);
   else          FUNC4("%s: reset, exit.\n", FUNC0(j));

   FUNC7(sh[j]->host_lock);
   return SUCCESS;
}