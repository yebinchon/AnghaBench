
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ track; int steprate; } ;
struct TYPE_3__ {scalar_t__ fdc_speed; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int DPRINT (char*) ;
 int FDCCMD_RESTORE ;
 int FDCREG_CMD ;
 int FDCSPEED ;
 int FDC_WRITE (int ,int) ;
 int MotorOn ;
 int NeedSeek ;
 int SET_IRQ_HANDLER (int (*) (int )) ;
 TYPE_2__ SUD ;
 TYPE_1__ dma_wd ;
 int fd_calibrate_done (int ) ;
 int start_timeout () ;

__attribute__((used)) static void fd_calibrate( void )
{
 if (SUD.track >= 0) {
  fd_calibrate_done( 0 );
  return;
 }

 if (ATARIHW_PRESENT(FDCSPEED))
  dma_wd.fdc_speed = 0; ;
 DPRINT(("fd_calibrate\n"));
 SET_IRQ_HANDLER( fd_calibrate_done );

 FDC_WRITE( FDCREG_CMD, FDCCMD_RESTORE | SUD.steprate );

 NeedSeek = 1;
 MotorOn = 1;
 start_timeout();

}
