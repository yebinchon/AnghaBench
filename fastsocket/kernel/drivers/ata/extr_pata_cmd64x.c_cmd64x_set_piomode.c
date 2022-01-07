
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; } ;


 int cmd64x_set_timing (struct ata_port*,struct ata_device*,int ) ;

__attribute__((used)) static void cmd64x_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 cmd64x_set_timing(ap, adev, adev->pio_mode);
}
