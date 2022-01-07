
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reset; } ;


 TYPE_1__* FDCS ;
 int FD_RESET_ALWAYS ;
 int LOCK_FDC (int,int) ;
 int WAIT (int ) ;
 int * cont ;
 int process_fd_request () ;
 int reset_cont ;
 int reset_fdc ;

__attribute__((used)) static int user_reset_fdc(int drive, int arg, int interruptible)
{
 int ret;

 ret = 0;
 LOCK_FDC(drive, interruptible);
 if (arg == FD_RESET_ALWAYS)
  FDCS->reset = 1;
 if (FDCS->reset) {
  cont = &reset_cont;
  WAIT(reset_fdc);
 }
 process_fd_request();
 return ret;
}
