
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_RECALIBRATE ;
 int LAST_OUT (int ) ;
 int UNIT (int ) ;
 int current_drive ;
 int debugt (char*) ;
 int do_floppy ;
 int output_byte (int ) ;
 int recal_interrupt ;

__attribute__((used)) static void recalibrate_floppy(void)
{
 debugt("recalibrate floppy:");
 do_floppy = recal_interrupt;
 output_byte(FD_RECALIBRATE);
 LAST_OUT(UNIT(current_drive));
}
