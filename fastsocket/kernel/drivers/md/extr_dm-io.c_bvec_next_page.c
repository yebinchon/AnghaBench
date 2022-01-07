
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {struct bio_vec* context_ptr; } ;
struct bio_vec {int dummy; } ;



__attribute__((used)) static void bvec_next_page(struct dpages *dp)
{
 struct bio_vec *bvec = (struct bio_vec *) dp->context_ptr;
 dp->context_ptr = bvec + 1;
}
