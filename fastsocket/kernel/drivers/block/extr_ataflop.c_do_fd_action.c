
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int track; } ;
struct TYPE_3__ {int stretch; } ;


 int DPRINT (char*) ;
 scalar_t__ IS_BUFFERED (int,int ,int) ;
 scalar_t__ IsFormatting ;
 scalar_t__ READ ;
 scalar_t__ ReqCmd ;
 scalar_t__ ReqCnt ;
 int ReqData ;
 int ReqSector ;
 int ReqSide ;
 int ReqTrack ;
 int SECTOR_BUFFER (int ) ;
 int SelectedDrive ;
 TYPE_2__ UD ;
 TYPE_1__* UDT ;
 scalar_t__ UseTrackbuffer ;
 scalar_t__ blk_rq_cur_sectors (int ) ;
 int copy_buffer (int ,int ) ;
 int fd_calibrate () ;
 int fd_end_request_cur (int ) ;
 int fd_request ;
 int fd_rwsec () ;
 int fd_seek () ;
 int fd_select_drive (int) ;
 int fd_writetrack () ;
 int redo_fd_request () ;
 int setup_req_params (int) ;

__attribute__((used)) static void do_fd_action( int drive )
{
 DPRINT(("do_fd_action\n"));

 if (UseTrackbuffer && !IsFormatting) {
 repeat:
     if (IS_BUFFERED( drive, ReqSide, ReqTrack )) {
  if (ReqCmd == READ) {
      copy_buffer( SECTOR_BUFFER(ReqSector), ReqData );
      if (++ReqCnt < blk_rq_cur_sectors(fd_request)) {

   setup_req_params( drive );
   goto repeat;
      }
      else {

   fd_end_request_cur(0);
   redo_fd_request();
   return;
      }
  }
  else {


      copy_buffer( ReqData, SECTOR_BUFFER(ReqSector) );
  }
     }
 }

 if (SelectedDrive != drive)
  fd_select_drive( drive );

 if (UD.track == -1)
  fd_calibrate();
 else if (UD.track != ReqTrack << UDT->stretch)
  fd_seek();
 else if (IsFormatting)
  fd_writetrack();
 else
  fd_rwsec();
}
