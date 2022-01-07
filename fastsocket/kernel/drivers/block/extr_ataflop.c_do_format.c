
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atari_format_descr {int track; int head; int sect_offset; } ;
struct TYPE_5__ {int blocks; int spt; } ;
struct TYPE_4__ {scalar_t__ drive_types; int index; } ;


 int BUFFER_SIZE ;
 int BufferDrive ;
 int DPRINT (char*) ;
 scalar_t__ DriveType ;
 int EINVAL ;
 int EIO ;
 int FILL (int,int) ;
 scalar_t__ FormatError ;
 int IRQ_MFP_FDC ;
 int IsFormatting ;
 int NUM_DISK_MINORS ;
 int ReqSide ;
 int ReqTrack ;
 unsigned char* TrackBuffer ;
 TYPE_2__* UDT ;
 TYPE_2__* atari_disk_type ;
 int atari_turnon_irq (int ) ;
 int del_timer (int *) ;
 int do_fd_action (int) ;
 int fdc_busy ;
 int fdc_wait ;
 int floppy_irq ;
 int format_wait ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* minor2disktype ;
 int motor_off_timer ;
 int redo_fd_request () ;
 int sleep_on (int *) ;
 int stdma_lock (int ,int *) ;

__attribute__((used)) static int do_format(int drive, int type, struct atari_format_descr *desc)
{
 unsigned char *p;
 int sect, nsect;
 unsigned long flags;

 DPRINT(("do_format( dr=%d tr=%d he=%d offs=%d )\n",
  drive, desc->track, desc->head, desc->sect_offset ));

 local_irq_save(flags);
 while( fdc_busy ) sleep_on( &fdc_wait );
 fdc_busy = 1;
 stdma_lock(floppy_irq, ((void*)0));
 atari_turnon_irq( IRQ_MFP_FDC );
 local_irq_restore(flags);

 if (type) {
  if (--type >= NUM_DISK_MINORS ||
      minor2disktype[type].drive_types > DriveType) {
   redo_fd_request();
   return -EINVAL;
  }
  type = minor2disktype[type].index;
  UDT = &atari_disk_type[type];
 }

 if (!UDT || desc->track >= UDT->blocks/UDT->spt/2 || desc->head >= 2) {
  redo_fd_request();
  return -EINVAL;
 }

 nsect = UDT->spt;
 p = TrackBuffer;


 BufferDrive = -1;

 del_timer( &motor_off_timer );

 FILL( 60 * (nsect / 9), 0x4e );
 for( sect = 0; sect < nsect; ++sect ) {
  FILL( 12, 0 );
  FILL( 3, 0xf5 );
  *p++ = 0xfe;
  *p++ = desc->track;
  *p++ = desc->head;
  *p++ = (nsect + sect - desc->sect_offset) % nsect + 1;
  *p++ = 2;
  *p++ = 0xf7;
  FILL( 22, 0x4e );
  FILL( 12, 0 );
  FILL( 3, 0xf5 );
  *p++ = 0xfb;
  FILL( 512, 0xe5 );
  *p++ = 0xf7;
  FILL( 40, 0x4e );
 }
 FILL( TrackBuffer+BUFFER_SIZE-p, 0x4e );

 IsFormatting = 1;
 FormatError = 0;
 ReqTrack = desc->track;
 ReqSide = desc->head;
 do_fd_action( drive );

 sleep_on( &format_wait );

 redo_fd_request();
 return( FormatError ? -EIO : 0 );
}
