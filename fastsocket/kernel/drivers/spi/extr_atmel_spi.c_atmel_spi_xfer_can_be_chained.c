
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ delay_usecs; int cs_change; } ;



__attribute__((used)) static inline int atmel_spi_xfer_can_be_chained(struct spi_transfer *xfer)
{
 return xfer->delay_usecs == 0 && !xfer->cs_change;
}
