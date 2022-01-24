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
struct scsi_cmnd {unsigned char* host_scribble; void (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  serial_number; int /*<<< orphan*/  request; TYPE_3__* device; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; } ;
struct mscp {unsigned int cpp_index; int /*<<< orphan*/  cp_dma_addr; int /*<<< orphan*/  cdb; int /*<<< orphan*/  cdb_len; struct scsi_cmnd* SCpnt; int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; int /*<<< orphan*/  opcode; } ;
struct hostdata {unsigned int board_number; } ;
struct TYPE_8__ {int last_cp_used; scalar_t__* cp_stat; struct mscp* cp; } ;
struct TYPE_7__ {int queue_depth; int /*<<< orphan*/  type; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; } ;
struct TYPE_6__ {unsigned int can_queue; scalar_t__ io_port; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CMD_OGM_INTR ; 
 scalar_t__ CP_TAIL_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (unsigned int) ; 
 scalar_t__ IN_USE ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  MAXLOOP ; 
 int /*<<< orphan*/  OP_SCSI ; 
 scalar_t__ READY ; 
 scalar_t__ REG_LCL_INTR ; 
 scalar_t__ REG_OGM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ do_trace ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ linked_comm ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mscp*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,unsigned int) ; 
 TYPE_2__** sh ; 
 int /*<<< orphan*/  FUNC15 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *)) {
   unsigned int i, j, k;
   struct mscp *cpp;

   /* j is the board number */
   j = ((struct hostdata *) SCpnt->device->host->hostdata)->board_number;

   if (SCpnt->host_scribble)
      FUNC11("%s: qcomm, pid %ld, SCpnt %p already active.\n",
            FUNC0(j), SCpnt->serial_number, SCpnt);

   /* i is the mailbox number, look for the first free mailbox
      starting from last_cp_used */
   i = FUNC2(j)->last_cp_used + 1;

   for (k = 0; k < sh[j]->can_queue; k++, i++) {

      if (i >= sh[j]->can_queue) i = 0;

      if (FUNC2(j)->cp_stat[i] == FREE) {
         FUNC2(j)->last_cp_used = i;
         break;
         }
      }

   if (k == sh[j]->can_queue) {
      FUNC12("%s: qcomm, no free mailbox.\n", FUNC0(j));
      return 1;
      }

   /* Set pointer to control packet structure */
   cpp = &FUNC2(j)->cp[i];

   FUNC8(cpp, 0, sizeof(struct mscp) - CP_TAIL_SIZE);
   SCpnt->scsi_done = done;
   cpp->cpp_index = i;
   SCpnt->host_scribble = (unsigned char *) &cpp->cpp_index;

   if (do_trace) FUNC12("%s: qcomm, mbox %d, target %d.%d:%d, pid %ld.\n",
                        FUNC0(j), i, SCpnt->device->channel, SCpnt->device->id,
                        SCpnt->device->lun, SCpnt->serial_number);

   cpp->opcode = OP_SCSI;
   cpp->channel = SCpnt->device->channel;
   cpp->target = SCpnt->device->id;
   cpp->lun = SCpnt->device->lun;
   cpp->SCpnt = SCpnt;
   cpp->cdb_len = SCpnt->cmd_len;
   FUNC7(cpp->cdb, SCpnt->cmnd, SCpnt->cmd_len);

   /* Use data transfer direction SCpnt->sc_data_direction */
   FUNC14(i, j);

   /* Map DMA buffers and SG list */
   FUNC6(i, j);

   if (linked_comm && SCpnt->device->queue_depth > 2
                                     && FUNC3(SCpnt->device->type)) {
      FUNC2(j)->cp_stat[i] = READY;
      FUNC5(SCpnt->device, FUNC4(SCpnt->request), j, FALSE);
      return 0;
      }

   if (FUNC16(sh[j]->io_port, MAXLOOP)) {
      FUNC15(i, j);
      SCpnt->host_scribble = NULL;
      FUNC13(KERN_INFO, SCpnt,
      		"qcomm, pid %ld, adapter busy.\n", SCpnt->serial_number);
      return 1;
      }

   /* Store pointer in OGM address bytes */
   FUNC10(FUNC1(cpp->cp_dma_addr), sh[j]->io_port + REG_OGM);

   /* Issue OGM interrupt */
   FUNC9(CMD_OGM_INTR, sh[j]->io_port + REG_LCL_INTR);

   FUNC2(j)->cp_stat[i] = IN_USE;
   return 0;
}