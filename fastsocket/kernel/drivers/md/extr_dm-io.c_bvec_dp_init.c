
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {struct bio_vec* context_ptr; int next_page; int get_page; } ;
struct bio_vec {int dummy; } ;


 int bvec_get_page ;
 int bvec_next_page ;

__attribute__((used)) static void bvec_dp_init(struct dpages *dp, struct bio_vec *bvec)
{
 dp->get_page = bvec_get_page;
 dp->next_page = bvec_next_page;
 dp->context_ptr = bvec;
}
