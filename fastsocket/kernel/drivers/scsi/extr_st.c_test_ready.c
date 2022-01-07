
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct st_request {int dummy; } ;
struct TYPE_5__ {int sense_key; int asc; } ;
struct st_cmdstatus {TYPE_2__ sense_hdr; scalar_t__ have_sense; } ;
struct scsi_tape {TYPE_3__* buffer; TYPE_1__* device; int long_timeout; } ;
struct TYPE_6__ {int syscall_result; struct st_cmdstatus cmdstat; } ;
struct TYPE_4__ {scalar_t__ scsi_level; } ;


 int CHKRES_NEW_SESSION ;
 int CHKRES_NOT_READY ;
 int CHKRES_NO_TAPE ;
 int CHKRES_READY ;
 int DMA_NONE ;
 int EINTR ;
 int EIO ;
 int MAX_ATTENTIONS ;
 int MAX_COMMAND_SIZE ;
 int MAX_READY_RETRIES ;
 int NOT_READY ;
 scalar_t__ SCSI_2 ;
 int ST_BLOCK_SECONDS ;
 unsigned char TEST_UNIT_READY ;
 int UNIT_ATTENTION ;
 int memset (void*,int ,int) ;
 scalar_t__ msleep_interruptible (int) ;
 struct st_request* st_do_scsi (struct st_request*,struct scsi_tape*,unsigned char*,int ,int ,int ,int ,int) ;
 int st_release_request (struct st_request*) ;

__attribute__((used)) static int test_ready(struct scsi_tape *STp, int do_wait)
{
 int attentions, waits, max_wait, scode;
 int retval = CHKRES_READY, new_session = 0;
 unsigned char cmd[MAX_COMMAND_SIZE];
 struct st_request *SRpnt = ((void*)0);
 struct st_cmdstatus *cmdstatp = &STp->buffer->cmdstat;

 max_wait = do_wait ? ST_BLOCK_SECONDS : 0;

 for (attentions=waits=0; ; ) {
  memset((void *) &cmd[0], 0, MAX_COMMAND_SIZE);
  cmd[0] = TEST_UNIT_READY;
  SRpnt = st_do_scsi(SRpnt, STp, cmd, 0, DMA_NONE,
       STp->long_timeout, MAX_READY_RETRIES, 1);

  if (!SRpnt) {
   retval = (STp->buffer)->syscall_result;
   break;
  }

  if (cmdstatp->have_sense) {

   scode = cmdstatp->sense_hdr.sense_key;

   if (scode == UNIT_ATTENTION) {
    new_session = 1;
    if (attentions < MAX_ATTENTIONS) {
     attentions++;
     continue;
    }
    else {
     retval = (-EIO);
     break;
    }
   }

   if (scode == NOT_READY) {
    if (waits < max_wait) {
     if (msleep_interruptible(1000)) {
      retval = (-EINTR);
      break;
     }
     waits++;
     continue;
    }
    else {
     if ((STp->device)->scsi_level >= SCSI_2 &&
         cmdstatp->sense_hdr.asc == 0x3a)
      retval = CHKRES_NO_TAPE;
     else
      retval = CHKRES_NOT_READY;
     break;
    }
   }
  }

  retval = (STp->buffer)->syscall_result;
  if (!retval)
   retval = new_session ? CHKRES_NEW_SESSION : CHKRES_READY;
  break;
 }

 if (SRpnt != ((void*)0))
  st_release_request(SRpnt);
 return retval;
}
