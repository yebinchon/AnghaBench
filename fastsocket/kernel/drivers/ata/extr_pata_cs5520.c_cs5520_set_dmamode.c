
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;
struct ata_device {size_t dma_mode; } ;





 int cs5520_enable_dma (struct ata_port*,struct ata_device*) ;
 int cs5520_set_timings (struct ata_port*,struct ata_device*,int const) ;

__attribute__((used)) static void cs5520_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static const int dma_xlate[3] = { 130, 129, 128 };
 cs5520_set_timings(ap, adev, dma_xlate[adev->dma_mode]);
 cs5520_enable_dma(ap, adev);
}
