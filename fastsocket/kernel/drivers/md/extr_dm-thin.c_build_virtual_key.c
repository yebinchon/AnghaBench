
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int dummy; } ;
struct dm_cell_key {int virtual; int block; int dev; } ;
typedef int dm_block_t ;


 int dm_thin_dev_id (struct dm_thin_device*) ;

__attribute__((used)) static void build_virtual_key(struct dm_thin_device *td, dm_block_t b,
         struct dm_cell_key *key)
{
 key->virtual = 1;
 key->dev = dm_thin_dev_id(td);
 key->block = b;
}
