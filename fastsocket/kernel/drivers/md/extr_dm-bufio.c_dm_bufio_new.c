
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {int dummy; } ;
struct dm_buffer {int dummy; } ;
typedef int sector_t ;


 int BUG_ON (int ) ;
 int NF_FRESH ;
 int dm_bufio_in_request () ;
 void* new_read (struct dm_bufio_client*,int ,int ,struct dm_buffer**) ;

void *dm_bufio_new(struct dm_bufio_client *c, sector_t block,
     struct dm_buffer **bp)
{
 BUG_ON(dm_bufio_in_request());

 return new_read(c, block, NF_FRESH, bp);
}
