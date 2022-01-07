
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct m25p {TYPE_1__* spi; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_2__ {int dev; } ;


 int OPCODE_RDSR ;
 int dev_err (int *,char*,int) ;
 scalar_t__ spi_write_then_read (TYPE_1__*,int*,int,int*,int) ;

__attribute__((used)) static int read_sr(struct m25p *flash)
{
 ssize_t retval;
 u8 code = OPCODE_RDSR;
 u8 val;

 retval = spi_write_then_read(flash->spi, &code, 1, &val, 1);

 if (retval < 0) {
  dev_err(&flash->spi->dev, "error %d reading SR\n",
    (int) retval);
  return retval;
 }

 return val;
}
