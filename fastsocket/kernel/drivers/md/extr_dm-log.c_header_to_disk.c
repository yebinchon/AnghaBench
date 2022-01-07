
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_header_disk {int nr_regions; void* version; void* magic; } ;
struct log_header_core {int nr_regions; int version; int magic; } ;


 void* cpu_to_le32 (int ) ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void header_to_disk(struct log_header_core *core, struct log_header_disk *disk)
{
 disk->magic = cpu_to_le32(core->magic);
 disk->version = cpu_to_le32(core->version);
 disk->nr_regions = cpu_to_le64(core->nr_regions);
}
