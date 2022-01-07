
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int * gtf_cache; } ;


 int kfree (int *) ;

__attribute__((used)) static void ata_acpi_clear_gtf(struct ata_device *dev)
{
 kfree(dev->gtf_cache);
 dev->gtf_cache = ((void*)0);
}
