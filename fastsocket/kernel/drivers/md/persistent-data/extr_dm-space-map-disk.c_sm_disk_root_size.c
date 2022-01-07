
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_space_map {int dummy; } ;
struct disk_sm_root {int dummy; } ;



__attribute__((used)) static int sm_disk_root_size(struct dm_space_map *sm, size_t *result)
{
 *result = sizeof(struct disk_sm_root);

 return 0;
}
