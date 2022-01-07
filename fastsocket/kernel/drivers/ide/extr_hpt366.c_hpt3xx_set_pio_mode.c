
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int ide_drive_t ;


 scalar_t__ const XFER_PIO_0 ;
 int hpt3xx_set_mode (int *,scalar_t__ const) ;

__attribute__((used)) static void hpt3xx_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 hpt3xx_set_mode(drive, XFER_PIO_0 + pio);
}
