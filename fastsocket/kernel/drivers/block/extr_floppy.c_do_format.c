
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct format_descr {scalar_t__ track; scalar_t__ head; } ;
struct TYPE_5__ {scalar_t__ tracks; } ;
struct TYPE_4__ {scalar_t__ track; scalar_t__ head; int sect; int fmt_gap; } ;


 TYPE_3__* DP ;
 int EINVAL ;
 int FD_SIZECODE (TYPE_1__*) ;
 int IWAIT (int ) ;
 int LOCK_FDC (int,int) ;
 TYPE_1__* _floppy ;
 int * cont ;
 scalar_t__* errors ;
 int format_cont ;
 scalar_t__ format_errors ;
 struct format_descr format_req ;
 int process_fd_request () ;
 int redo_format ;
 int set_floppy (int) ;

__attribute__((used)) static int do_format(int drive, struct format_descr *tmp_format_req)
{
 int ret;

 LOCK_FDC(drive, 1);
 set_floppy(drive);
 if (!_floppy ||
     _floppy->track > DP->tracks ||
     tmp_format_req->track >= _floppy->track ||
     tmp_format_req->head >= _floppy->head ||
     (_floppy->sect << 2) % (1 << FD_SIZECODE(_floppy)) ||
     !_floppy->fmt_gap) {
  process_fd_request();
  return -EINVAL;
 }
 format_req = *tmp_format_req;
 format_errors = 0;
 cont = &format_cont;
 errors = &format_errors;
 IWAIT(redo_format);
 process_fd_request();
 return ret;
}
