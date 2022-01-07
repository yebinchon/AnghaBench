
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {int dummy; } ;


 int do_pata_set_dmamode (struct ata_port*,struct ata_device*,int) ;

__attribute__((used)) static void ich_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 do_pata_set_dmamode(ap, adev, 1);
}
