
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block {int dummy; } ;
struct buffer_aux {int lock; scalar_t__ write_locked; } ;


 int bl_up_read (int *) ;
 int bl_up_write (int *) ;
 struct buffer_aux* dm_bufio_get_aux_data (int ) ;
 int dm_bufio_mark_buffer_dirty (int ) ;
 int dm_bufio_release (int ) ;
 int to_buffer (struct dm_block*) ;

int dm_bm_unlock(struct dm_block *b)
{
 struct buffer_aux *aux;
 aux = dm_bufio_get_aux_data(to_buffer(b));

 if (aux->write_locked) {
  dm_bufio_mark_buffer_dirty(to_buffer(b));
  bl_up_write(&aux->lock);
 } else
  bl_up_read(&aux->lock);

 dm_bufio_release(to_buffer(b));

 return 0;
}
