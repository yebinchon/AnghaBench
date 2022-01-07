
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ select_delay; } ;
struct TYPE_5__ {scalar_t__ select_delay; } ;
struct TYPE_4__ {scalar_t__ fd_ref; } ;


 TYPE_3__* DP ;
 int N_DRIVE ;
 TYPE_2__* UDP ;
 TYPE_1__* UDRS ;
 int UNIT (int) ;
 int current_drive ;
 int fdc ;
 int set_dor (int ,int,int) ;
 int set_fdc (int) ;

__attribute__((used)) static void scandrives(void)
{
 int i;
 int drive;
 int saved_drive;

 if (DP->select_delay)
  return;

 saved_drive = current_drive;
 for (i = 0; i < N_DRIVE; i++) {
  drive = (saved_drive + i + 1) % N_DRIVE;
  if (UDRS->fd_ref == 0 || UDP->select_delay != 0)
   continue;
  set_fdc(drive);
  if (!(set_dor(fdc, ~3, UNIT(drive) | (0x10 << UNIT(drive))) &
        (0x10 << UNIT(drive))))


   set_dor(fdc, ~(0x10 << UNIT(drive)), 0);
 }
 set_fdc(saved_drive);
}
