
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int spec1; int spec2; int need_configure; int perp_mode; scalar_t__ rawcmd; } ;
struct TYPE_3__ {scalar_t__ track; } ;


 scalar_t__ FDC (int) ;
 TYPE_2__* FDCS ;
 scalar_t__ NEED_1_RECAL ;
 scalar_t__ NEED_2_RECAL ;
 int N_DRIVE ;
 TYPE_1__* UDRS ;
 scalar_t__ fdc ;

__attribute__((used)) static void reset_fdc_info(int mode)
{
 int drive;

 FDCS->spec1 = FDCS->spec2 = -1;
 FDCS->need_configure = 1;
 FDCS->perp_mode = 1;
 FDCS->rawcmd = 0;
 for (drive = 0; drive < N_DRIVE; drive++)
  if (FDC(drive) == fdc && (mode || UDRS->track != NEED_1_RECAL))
   UDRS->track = NEED_2_RECAL;
}
