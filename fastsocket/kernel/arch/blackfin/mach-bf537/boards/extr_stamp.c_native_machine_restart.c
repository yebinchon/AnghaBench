
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int P_DEFAULT_BOOT_SPI_CS ;
 int bfin_read_SYSCR () ;
 int bfin_reset_boot_spi_cs (int ) ;

void native_machine_restart(char *cmd)
{

 if ((bfin_read_SYSCR() & 0x7) == 0x3)
  bfin_reset_boot_spi_cs(P_DEFAULT_BOOT_SPI_CS);
}
