
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int track; int select_date; } ;
struct TYPE_6__ {int reset; } ;
struct TYPE_5__ {int (* redo ) () ;int (* error ) () ;} ;


 int CLEARF (int ) ;
 TYPE_4__* DP ;
 int DPRINT (char*) ;
 TYPE_3__* DRS ;
 TYPE_2__* FDCS ;
 int FD_DEBUG ;
 int FD_DISK_NEWCHANGE ;


 int ST0 ;
 int ST0_ECE ;
 int ST1 ;
 TYPE_1__* cont ;
 int debugt (char*) ;
 int floppy_ready () ;
 int inr ;
 int jiffies ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void recal_interrupt(void)
{
 debugt("recal interrupt:");
 if (inr != 2)
  FDCS->reset = 1;
 else if (ST0 & ST0_ECE) {
  switch (DRS->track) {
  case 129:
   debugt("recal interrupt need 1 recal:");




   cont->error();
   cont->redo();
   return;
  case 128:
   debugt("recal interrupt need 2 recal:");
   CLEARF(FD_DISK_NEWCHANGE);
   DRS->select_date = jiffies;

  default:
   debugt("recal interrupt default:");






   DRS->track = 129;
   break;
  }
 } else
  DRS->track = ST1;
 floppy_ready();
}
