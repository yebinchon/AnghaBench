
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m25p {int * command; int spi; } ;


 int OPCODE_WRSR ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int write_sr(struct m25p *flash, u8 val)
{
 flash->command[0] = OPCODE_WRSR;
 flash->command[1] = val;

 return spi_write(flash->spi, flash->command, 2);
}
