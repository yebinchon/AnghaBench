
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct dpages {scalar_t__ context_ptr; } ;
struct bio_vec {unsigned long bv_len; unsigned int bv_offset; struct page* bv_page; } ;



__attribute__((used)) static void bvec_get_page(struct dpages *dp,
    struct page **p, unsigned long *len, unsigned *offset)
{
 struct bio_vec *bvec = (struct bio_vec *) dp->context_ptr;
 *p = bvec->bv_page;
 *len = bvec->bv_len;
 *offset = bvec->bv_offset;
}
