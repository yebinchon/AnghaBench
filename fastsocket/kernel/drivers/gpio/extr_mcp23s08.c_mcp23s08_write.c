
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct mcp23s08 {unsigned int addr; int spi; } ;


 int spi_write_then_read (int ,unsigned int*,int,int *,int ) ;

__attribute__((used)) static int mcp23s08_write(struct mcp23s08 *mcp, unsigned reg, u8 val)
{
 u8 tx[3];

 tx[0] = mcp->addr;
 tx[1] = reg;
 tx[2] = val;
 return spi_write_then_read(mcp->spi, tx, sizeof tx, ((void*)0), 0);
}
