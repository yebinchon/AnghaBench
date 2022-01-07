
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ track; } ;
struct TYPE_6__ {int (* redo ) () ;int (* done ) (int ) ;} ;
struct TYPE_5__ {int flags; scalar_t__ track; } ;


 TYPE_4__* DP ;
 int DPRINT (char*) ;
 TYPE_3__* DRS ;
 int FD_DEBUG ;
 int FD_DISK_CHANGED ;
 int FD_DISK_NEWCHANGE ;
 int FD_RAW_NEED_DISK ;
 int FD_RAW_NEED_SEEK ;
 int FD_SEEK ;
 int FD_SILENT_DCL_CLEAR ;
 int LAST_OUT (int) ;
 scalar_t__ NEED_1_RECAL ;
 scalar_t__ NO_TRACK ;
 int SETF (int ) ;
 scalar_t__ TESTF (int ) ;
 int UNIT (int ) ;
 int blind_seek ;
 int check_wp () ;
 TYPE_2__* cont ;
 int current_drive ;
 int debugt (char*) ;
 scalar_t__ disk_change (int ) ;
 int do_floppy ;
 int fdc ;
 int output_byte (int) ;
 TYPE_1__* raw_cmd ;
 int recalibrate_floppy () ;
 int seek_interrupt ;
 int set_dor (int ,int,int ) ;
 int setup_rw_floppy () ;
 int stub1 (int ) ;
 int stub2 () ;

__attribute__((used)) static void seek_floppy(void)
{
 int track;

 blind_seek = 0;







 if (!TESTF(FD_DISK_NEWCHANGE) &&
     disk_change(current_drive) && (raw_cmd->flags & FD_RAW_NEED_DISK)) {




  SETF(FD_DISK_CHANGED);
  cont->done(0);
  cont->redo();
  return;
 }
 if (DRS->track <= NEED_1_RECAL) {
  recalibrate_floppy();
  return;
 } else if (TESTF(FD_DISK_NEWCHANGE) &&
     (raw_cmd->flags & FD_RAW_NEED_DISK) &&
     (DRS->track <= NO_TRACK || DRS->track == raw_cmd->track)) {


  if (raw_cmd->track)
   track = raw_cmd->track - 1;
  else {
   if (DP->flags & FD_SILENT_DCL_CLEAR) {
    set_dor(fdc, ~(0x10 << UNIT(current_drive)), 0);
    blind_seek = 1;
    raw_cmd->flags |= FD_RAW_NEED_SEEK;
   }
   track = 1;
  }
 } else {
  check_wp();
  if (raw_cmd->track != DRS->track &&
      (raw_cmd->flags & FD_RAW_NEED_SEEK))
   track = raw_cmd->track;
  else {
   setup_rw_floppy();
   return;
  }
 }

 do_floppy = seek_interrupt;
 output_byte(FD_SEEK);
 output_byte(UNIT(current_drive));
 LAST_OUT(track);
 debugt("seek command:");
}
