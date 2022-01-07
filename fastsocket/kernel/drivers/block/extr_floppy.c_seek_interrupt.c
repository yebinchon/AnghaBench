
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ track; int select_date; } ;
struct TYPE_4__ {int (* redo ) () ;int (* error ) () ;} ;


 int CLEARF (int ) ;
 TYPE_3__* DP ;
 int DPRINT (char*,...) ;
 TYPE_2__* DRS ;
 int FD_DEBUG ;
 int FD_DISK_NEWCHANGE ;
 scalar_t__ NEED_2_RECAL ;
 int ST0 ;
 scalar_t__ ST1 ;
 int blind_seek ;
 TYPE_1__* cont ;
 int debugt (char*) ;
 int floppy_ready () ;
 int inr ;
 int jiffies ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void seek_interrupt(void)
{
 debugt("seek interrupt:");
 if (inr != 2 || (ST0 & 0xF8) != 0x20) {
  DPRINT("seek failed\n");
  DRS->track = NEED_2_RECAL;
  cont->error();
  cont->redo();
  return;
 }
 if (DRS->track >= 0 && DRS->track != ST1 && !blind_seek) {







  CLEARF(FD_DISK_NEWCHANGE);
  DRS->select_date = jiffies;
 }
 DRS->track = ST1;
 floppy_ready();
}
