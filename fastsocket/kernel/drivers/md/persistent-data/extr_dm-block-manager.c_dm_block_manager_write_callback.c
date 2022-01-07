
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_buffer {int dummy; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {TYPE_1__* validator; } ;
struct TYPE_2__ {int (* prepare_for_write ) (TYPE_1__*,struct dm_block*,int ) ;} ;


 struct buffer_aux* dm_bufio_get_aux_data (struct dm_buffer*) ;
 int dm_bufio_get_block_size (int ) ;
 int dm_bufio_get_client (struct dm_buffer*) ;
 int stub1 (TYPE_1__*,struct dm_block*,int ) ;

__attribute__((used)) static void dm_block_manager_write_callback(struct dm_buffer *buf)
{
 struct buffer_aux *aux = dm_bufio_get_aux_data(buf);
 if (aux->validator) {
  aux->validator->prepare_for_write(aux->validator, (struct dm_block *) buf,
    dm_bufio_get_block_size(dm_bufio_get_client(buf)));
 }
}
