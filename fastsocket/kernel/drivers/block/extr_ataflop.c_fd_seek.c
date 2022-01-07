
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int track; int steprate; } ;
struct TYPE_5__ {int stretch; } ;
struct TYPE_4__ {scalar_t__ fdc_speed; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int DPRINT (char*) ;
 int FDCCMD_SEEK ;
 int FDCREG_CMD ;
 int FDCREG_DATA ;
 int FDCSPEED ;
 int FDC_WRITE (int ,int) ;
 int MFPDELAY () ;
 int MotorOn ;
 int ReqTrack ;
 int SET_IRQ_HANDLER (int (*) (int )) ;
 TYPE_3__ SUD ;
 TYPE_2__* SUDT ;
 TYPE_1__ dma_wd ;
 int fd_seek_done (int ) ;
 int set_head_settle_flag () ;
 int start_timeout () ;
 int udelay (int) ;

__attribute__((used)) static void fd_seek( void )
{
 if (SUD.track == ReqTrack << SUDT->stretch) {
  fd_seek_done( 0 );
  return;
 }

 if (ATARIHW_PRESENT(FDCSPEED)) {
  dma_wd.fdc_speed = 0;
  MFPDELAY();
 }

 DPRINT(("fd_seek() to track %d\n",ReqTrack));
 FDC_WRITE( FDCREG_DATA, ReqTrack << SUDT->stretch);
 udelay(25);
 SET_IRQ_HANDLER( fd_seek_done );
 FDC_WRITE( FDCREG_CMD, FDCCMD_SEEK | SUD.steprate );

 MotorOn = 1;
 set_head_settle_flag();
 start_timeout();

}
