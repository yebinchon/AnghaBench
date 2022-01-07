
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int dor; } ;
struct TYPE_5__ {int flags; scalar_t__ select_delay; } ;
struct TYPE_4__ {scalar_t__ keep_data; int last_checked; scalar_t__ maxblock; int flags; scalar_t__ select_date; } ;


 int DPRINT (char*,...) ;
 int FDC (int) ;
 TYPE_3__* FDCS ;
 int FD_BROKEN_DCL ;
 int FD_DEBUG ;
 int FD_DIR ;
 int FD_DISK_CHANGED ;
 int FD_DISK_NEWCHANGE ;
 int FD_VERIFY ;
 int FTD_MSG ;
 int MAX_DISK_SIZE ;
 size_t TOMINOR (int) ;
 int UCLEARF (int ) ;
 TYPE_2__* UDP ;
 TYPE_1__* UDRS ;
 int UNIT (int) ;
 int USETF (int ) ;
 int UTESTF (int ) ;
 int ** current_type ;
 int fd_inb (int ) ;
 int* floppy_sizes ;
 int jiffies ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static int disk_change(int drive)
{
 int fdc = FDC(drive);
 if (UDP->flags & FD_BROKEN_DCL)
  return UTESTF(FD_DISK_CHANGED);
 if ((fd_inb(FD_DIR) ^ UDP->flags) & 0x80) {
  USETF(FD_VERIFY);
  if (UDRS->maxblock) {

   USETF(FD_DISK_CHANGED);
  }


  if (UDRS->keep_data >= 0) {
   if ((UDP->flags & FTD_MSG) &&
       current_type[drive] != ((void*)0))
    DPRINT("Disk type is undefined after "
           "disk change\n");
   current_type[drive] = ((void*)0);
   floppy_sizes[TOMINOR(drive)] = MAX_DISK_SIZE << 1;
  }

  return 1;
 } else {
  UDRS->last_checked = jiffies;
  UCLEARF(FD_DISK_NEWCHANGE);
 }
 return 0;
}
