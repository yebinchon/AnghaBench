
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_buffer {scalar_t__ data_mode; TYPE_1__* c; } ;
typedef int sector_t ;
typedef int bio_end_io_t ;
struct TYPE_2__ {int block_size; int (* write_callback ) (struct dm_buffer*) ;} ;


 scalar_t__ DATA_MODE_VMALLOC ;
 int DM_BUFIO_INLINE_VECS ;
 int PAGE_SIZE ;
 int WRITE ;
 int stub1 (struct dm_buffer*) ;
 int use_dmio (struct dm_buffer*,int,int ,int *) ;
 int use_inline_bio (struct dm_buffer*,int,int ,int *) ;

__attribute__((used)) static void submit_io(struct dm_buffer *b, int rw, sector_t block,
        bio_end_io_t *end_io)
{
 if (rw == WRITE && b->c->write_callback)
  b->c->write_callback(b);

 if (b->c->block_size <= DM_BUFIO_INLINE_VECS * PAGE_SIZE &&
     b->data_mode != DATA_MODE_VMALLOC)
  use_inline_bio(b, rw, block, end_io);
 else
  use_dmio(b, rw, block, end_io);
}
