
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3020 {int leftshift; int ioaddress; } ;


 int readl (int ) ;

__attribute__((used)) static unsigned char v3020_mmio_read_bit(struct v3020 *chip)
{
 return !!(readl(chip->ioaddress) & (1 << chip->leftshift));
}
