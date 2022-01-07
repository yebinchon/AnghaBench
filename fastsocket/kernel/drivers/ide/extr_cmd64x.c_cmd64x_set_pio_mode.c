
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int ide_drive_t ;


 int cmd64x_tune_pio (int *,int const) ;

__attribute__((used)) static void cmd64x_set_pio_mode(ide_drive_t *drive, const u8 pio)
{




 if (pio == 8 || pio == 9)
  return;

 cmd64x_tune_pio(drive, pio);
}
