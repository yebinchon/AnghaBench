
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3020 {int ioaddress; } ;


 int iounmap (int ) ;

__attribute__((used)) static void v3020_mmio_unmap(struct v3020 *chip)
{
 iounmap(chip->ioaddress);
}
