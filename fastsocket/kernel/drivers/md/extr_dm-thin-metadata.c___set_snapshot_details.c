
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct dm_thin_device {int changed; void* snapshotted_time; int mapped_blocks; } ;
struct dm_pool_metadata {int dummy; } ;
typedef int dm_thin_id ;


 int __close_device (struct dm_thin_device*) ;
 int __open_device (struct dm_pool_metadata*,int ,int ,struct dm_thin_device**) ;

__attribute__((used)) static int __set_snapshot_details(struct dm_pool_metadata *pmd,
      struct dm_thin_device *snap,
      dm_thin_id origin, uint32_t time)
{
 int r;
 struct dm_thin_device *td;

 r = __open_device(pmd, origin, 0, &td);
 if (r)
  return r;

 td->changed = 1;
 td->snapshotted_time = time;

 snap->mapped_blocks = td->mapped_blocks;
 snap->snapshotted_time = time;
 __close_device(td);

 return 0;
}
