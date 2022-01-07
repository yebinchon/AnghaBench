
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst25l_flash {int spi; } ;


 unsigned char SST25L_CMD_RDSR ;
 int spi_write_then_read (int ,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static int sst25l_status(struct sst25l_flash *flash, int *status)
{
 unsigned char command, response;
 int err;

 command = SST25L_CMD_RDSR;
 err = spi_write_then_read(flash->spi, &command, 1, &response, 1);
 if (err < 0)
  return err;

 *status = response;
 return 0;
}
