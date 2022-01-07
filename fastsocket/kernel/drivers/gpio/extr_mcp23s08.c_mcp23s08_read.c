
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mcp23s08 {int addr; int spi; } ;


 int spi_write_then_read (int ,int*,int,int*,int) ;

__attribute__((used)) static int mcp23s08_read(struct mcp23s08 *mcp, unsigned reg)
{
 u8 tx[2], rx[1];
 int status;

 tx[0] = mcp->addr | 0x01;
 tx[1] = reg;
 status = spi_write_then_read(mcp->spi, tx, sizeof tx, rx, sizeof rx);
 return (status < 0) ? status : rx[0];
}
