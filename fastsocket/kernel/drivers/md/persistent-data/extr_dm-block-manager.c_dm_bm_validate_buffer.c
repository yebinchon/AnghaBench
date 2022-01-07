
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_buffer {int dummy; } ;
struct dm_block_validator {int (* check ) (struct dm_block_validator*,struct dm_block*,int ) ;char* name; } ;
struct dm_block_manager {int bufio; } ;
struct dm_block {int dummy; } ;
struct buffer_aux {struct dm_block_validator* validator; } ;


 int DMERR_LIMIT (char*,char*,...) ;
 int EINVAL ;
 scalar_t__ dm_bufio_get_block_number (struct dm_buffer*) ;
 int dm_bufio_get_block_size (int ) ;
 int stub1 (struct dm_block_validator*,struct dm_block*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dm_bm_validate_buffer(struct dm_block_manager *bm,
     struct dm_buffer *buf,
     struct buffer_aux *aux,
     struct dm_block_validator *v)
{
 if (unlikely(!aux->validator)) {
  int r;
  if (!v)
   return 0;
  r = v->check(v, (struct dm_block *) buf, dm_bufio_get_block_size(bm->bufio));
  if (unlikely(r)) {
   DMERR_LIMIT("%s validator check failed for block %llu", v->name,
        (unsigned long long) dm_bufio_get_block_number(buf));
   return r;
  }
  aux->validator = v;
 } else {
  if (unlikely(aux->validator != v)) {
   DMERR_LIMIT("validator mismatch (old=%s vs new=%s) for block %llu",
        aux->validator->name, v ? v->name : "NULL",
        (unsigned long long) dm_bufio_get_block_number(buf));
   return -EINVAL;
  }
 }

 return 0;
}
