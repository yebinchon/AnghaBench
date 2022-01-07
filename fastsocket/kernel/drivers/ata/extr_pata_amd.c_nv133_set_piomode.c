
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; } ;


 int timing_setup (struct ata_port*,struct ata_device*,int,int ,int) ;

__attribute__((used)) static void nv133_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 timing_setup(ap, adev, 0x50, adev->pio_mode, 4);
}
