
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {struct request clone; int info; scalar_t__ error; struct request* orig; int * ti; struct mapped_device* md; } ;
typedef int gfp_t ;


 struct dm_rq_target_io* alloc_rq_tio (struct mapped_device*,int ) ;
 int free_rq_tio (struct dm_rq_target_io*) ;
 int memset (int *,int ,int) ;
 scalar_t__ setup_clone (struct request*,struct request*,struct dm_rq_target_io*) ;

__attribute__((used)) static struct request *clone_rq(struct request *rq, struct mapped_device *md,
    gfp_t gfp_mask)
{
 struct request *clone;
 struct dm_rq_target_io *tio;

 tio = alloc_rq_tio(md, gfp_mask);
 if (!tio)
  return ((void*)0);

 tio->md = md;
 tio->ti = ((void*)0);
 tio->orig = rq;
 tio->error = 0;
 memset(&tio->info, 0, sizeof(tio->info));

 clone = &tio->clone;
 if (setup_clone(clone, rq, tio)) {

  free_rq_tio(tio);
  return ((void*)0);
 }

 return clone;
}
