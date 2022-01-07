
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int track; } ;
struct TYPE_7__ {int fdc_speed; } ;
struct TYPE_6__ {int fdc_speed; } ;
struct TYPE_5__ {int rd_data_reg_sel; unsigned char wd_data; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 unsigned char DSKDRV0 ;
 unsigned char DSKDRV1 ;
 unsigned char DSKDRVNONE ;
 int FDCREG_TRACK ;
 int FDCSPEED ;
 int FDC_WRITE (int ,int ) ;
 int SelectedDrive ;
 TYPE_4__ UD ;
 TYPE_3__* UDT ;
 int atari_dont_touch_floppy_select ;
 TYPE_2__ dma_wd ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__ sound_ym ;
 int udelay (int) ;

__attribute__((used)) static void fd_select_drive( int drive )
{
 unsigned long flags;
 unsigned char tmp;

 if (drive == SelectedDrive)
   return;


 local_irq_save(flags);
 sound_ym.rd_data_reg_sel = 14;
 tmp = sound_ym.rd_data_reg_sel;
 sound_ym.wd_data = (tmp | DSKDRVNONE) & ~(drive == 0 ? DSKDRV0 : DSKDRV1);
 atari_dont_touch_floppy_select = 1;
 local_irq_restore(flags);


 FDC_WRITE( FDCREG_TRACK, UD.track );
 udelay(25);


 if (UDT)
  if (ATARIHW_PRESENT(FDCSPEED))
   dma_wd.fdc_speed = UDT->fdc_speed;

 SelectedDrive = drive;
}
