
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_bufio_client {int sectors_per_block_bits; TYPE_1__* bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int i_size_read (int ) ;

sector_t dm_bufio_get_device_size(struct dm_bufio_client *c)
{
 return i_size_read(c->bdev->bd_inode) >>
      (SECTOR_SHIFT + c->sectors_per_block_bits);
}
