
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int max_sectors; } ;



__attribute__((used)) static void pdc2026x_dev_config(struct ata_device *adev)
{
 adev->max_sectors = 256;
}
