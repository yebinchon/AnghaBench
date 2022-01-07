
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_grp {int blkg; } ;
struct throtl_data {TYPE_1__* queue; } ;
struct TYPE_2__ {int node; } ;


 int GFP_ATOMIC ;
 int blkio_alloc_blkg_stats (int *) ;
 int kfree (struct throtl_grp*) ;
 struct throtl_grp* kzalloc_node (int,int ,int ) ;
 int throtl_init_group (struct throtl_grp*) ;

__attribute__((used)) static struct throtl_grp *throtl_alloc_tg(struct throtl_data *td)
{
 struct throtl_grp *tg = ((void*)0);
 int ret;

 tg = kzalloc_node(sizeof(*tg), GFP_ATOMIC, td->queue->node);
 if (!tg)
  return ((void*)0);

 ret = blkio_alloc_blkg_stats(&tg->blkg);

 if (ret) {
  kfree(tg);
  return ((void*)0);
 }

 throtl_init_group(tg);
 return tg;
}
