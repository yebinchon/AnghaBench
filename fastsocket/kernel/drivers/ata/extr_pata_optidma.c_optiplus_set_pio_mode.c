
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; } ;


 int optiplus_mode_setup (struct ata_port*,struct ata_device*,int ) ;

__attribute__((used)) static void optiplus_set_pio_mode(struct ata_port *ap, struct ata_device *adev)
{
 optiplus_mode_setup(ap, adev, adev->pio_mode);
}
