
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int dummy; } ;
struct dm_block_validator {int dummy; } ;
struct dm_block_manager {int bufio; scalar_t__ read_only; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {int write_locked; struct dm_block_validator* validator; int lock; } ;
typedef int dm_block_t ;


 int EPERM ;
 int IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int bl_down_write (int *) ;
 int dm_bm_block_size (struct dm_block_manager*) ;
 struct buffer_aux* dm_bufio_get_aux_data (int ) ;
 void* dm_bufio_new (int ,int ,struct dm_buffer**) ;
 int dm_bufio_release (int ) ;
 int memset (void*,int ,int ) ;
 int to_buffer (struct dm_block*) ;
 scalar_t__ unlikely (int ) ;

int dm_bm_write_lock_zero(struct dm_block_manager *bm,
     dm_block_t b, struct dm_block_validator *v,
     struct dm_block **result)
{
 int r;
 struct buffer_aux *aux;
 void *p;

 if (bm->read_only)
  return -EPERM;

 p = dm_bufio_new(bm->bufio, b, (struct dm_buffer **) result);
 if (unlikely(IS_ERR(p)))
  return PTR_ERR(p);

 memset(p, 0, dm_bm_block_size(bm));

 aux = dm_bufio_get_aux_data(to_buffer(*result));
 r = bl_down_write(&aux->lock);
 if (r) {
  dm_bufio_release(to_buffer(*result));
  return r;
 }

 aux->write_locked = 1;
 aux->validator = v;

 return 0;
}
