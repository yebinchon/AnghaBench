
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pnp_dev {int dummy; } ;


 int ACPI_DECODE_16 ;
 int IORESOURCE_DISABLED ;
 int IORESOURCE_IO_16BIT_ADDR ;
 int pnp_add_io_resource (struct pnp_dev*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void pnpacpi_parse_allocated_ioresource(struct pnp_dev *dev, u64 start,
            u64 len, int io_decode)
{
 int flags = 0;
 u64 end = start + len - 1;

 if (io_decode == ACPI_DECODE_16)
  flags |= IORESOURCE_IO_16BIT_ADDR;
 if (len == 0 || end >= 0x10003)
  flags |= IORESOURCE_DISABLED;

 pnp_add_io_resource(dev, start, end, flags);
}
