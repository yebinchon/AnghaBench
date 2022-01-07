
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rawcmd; int reset; } ;


 int FDC (int) ;
 TYPE_1__* FDCS ;
 int FD_STATUS ;
 int N_DRIVE ;
 scalar_t__ STATUS_READY ;
 int current_drive ;
 scalar_t__ fd_inb (int ) ;
 int fdc ;
 int printk (char*) ;
 int reset_fdc_info (int) ;
 int set_dor (int,int,int) ;

__attribute__((used)) static void set_fdc(int drive)
{
 if (drive >= 0 && drive < N_DRIVE) {
  fdc = FDC(drive);
  current_drive = drive;
 }
 if (fdc != 1 && fdc != 0) {
  printk("bad fdc value\n");
  return;
 }
 set_dor(fdc, ~0, 8);



 if (FDCS->rawcmd == 2)
  reset_fdc_info(1);
 if (fd_inb(FD_STATUS) != STATUS_READY)
  FDCS->reset = 1;
}
