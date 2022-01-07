
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bi_sector; int * bi_end_io; int bi_bdev; int bi_max_vecs; int bi_io_vec; } ;
struct dm_buffer {char* data; TYPE_2__ bio; TYPE_1__* c; int bio_vec; } ;
typedef int sector_t ;
typedef int bio_end_io_t ;
struct TYPE_5__ {int sectors_per_block_bits; int block_size; int bdev; } ;


 int BUG_ON (int) ;
 int DM_BUFIO_INLINE_VECS ;
 int PAGE_SIZE ;
 int bio_add_page (TYPE_2__*,int ,int,int) ;
 int bio_init (TYPE_2__*) ;
 int submit_bio (int,TYPE_2__*) ;
 int use_dmio (struct dm_buffer*,int,int,int *) ;
 int virt_to_page (char*) ;
 int virt_to_phys (char*) ;

__attribute__((used)) static void use_inline_bio(struct dm_buffer *b, int rw, sector_t block,
      bio_end_io_t *end_io)
{
 char *ptr;
 int len;

 bio_init(&b->bio);
 b->bio.bi_io_vec = b->bio_vec;
 b->bio.bi_max_vecs = DM_BUFIO_INLINE_VECS;
 b->bio.bi_sector = block << b->c->sectors_per_block_bits;
 b->bio.bi_bdev = b->c->bdev;
 b->bio.bi_end_io = end_io;





 ptr = b->data;
 len = b->c->block_size;

 if (len >= PAGE_SIZE)
  BUG_ON((unsigned long)ptr & (PAGE_SIZE - 1));
 else
  BUG_ON((unsigned long)ptr & (len - 1));

 do {
  if (!bio_add_page(&b->bio, virt_to_page(ptr),
      len < PAGE_SIZE ? len : PAGE_SIZE,
      virt_to_phys(ptr) & (PAGE_SIZE - 1))) {
   BUG_ON(b->c->block_size <= PAGE_SIZE);
   use_dmio(b, rw, block, end_io);
   return;
  }

  len -= PAGE_SIZE;
  ptr += PAGE_SIZE;
 } while (len > 0);

 submit_bio(rw, &b->bio);
}
