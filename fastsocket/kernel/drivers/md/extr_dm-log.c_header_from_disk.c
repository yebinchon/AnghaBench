
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_header_disk {int nr_regions; int version; int magic; } ;
struct log_header_core {int nr_regions; void* version; void* magic; } ;


 void* le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void header_from_disk(struct log_header_core *core, struct log_header_disk *disk)
{
 core->magic = le32_to_cpu(disk->magic);
 core->version = le32_to_cpu(disk->version);
 core->nr_regions = le64_to_cpu(disk->nr_regions);
}
