
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 TYPE_1__* DP ;
 int DPRINT (char*) ;
 int FD_DEBUG ;
 int FD_DISK_NEWCHANGE ;
 int SETF (int ) ;
 int current_reqD ;
 int floppy_ready () ;
 int reschedule_timeout (int ,char*,int ) ;
 int scandrives () ;

__attribute__((used)) static void floppy_start(void)
{
 reschedule_timeout(current_reqD, "floppy start", 0);

 scandrives();





 SETF(FD_DISK_NEWCHANGE);
 floppy_ready();
}
