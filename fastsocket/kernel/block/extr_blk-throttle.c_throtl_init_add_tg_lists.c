
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct throtl_grp {TYPE_1__ blkg; int * iops; int * bps; } ;
struct throtl_data {int dummy; } ;
struct blkio_cgroup {int dummy; } ;


 int BLKIO_POLICY_THROTL ;
 size_t READ ;
 size_t WRITE ;
 int __throtl_tg_fill_dev_details (struct throtl_data*,struct throtl_grp*) ;
 int blkcg_get_read_bps (struct blkio_cgroup*,int ) ;
 int blkcg_get_read_iops (struct blkio_cgroup*,int ) ;
 int blkcg_get_write_bps (struct blkio_cgroup*,int ) ;
 int blkcg_get_write_iops (struct blkio_cgroup*,int ) ;
 int blkiocg_add_blkio_group (struct blkio_cgroup*,TYPE_1__*,void*,int ,int ) ;
 int throtl_add_group_to_td_list (struct throtl_data*,struct throtl_grp*) ;

__attribute__((used)) static void throtl_init_add_tg_lists(struct throtl_data *td,
   struct throtl_grp *tg, struct blkio_cgroup *blkcg)
{
 __throtl_tg_fill_dev_details(td, tg);


 blkiocg_add_blkio_group(blkcg, &tg->blkg, (void *)td,
    tg->blkg.dev, BLKIO_POLICY_THROTL);

 tg->bps[READ] = blkcg_get_read_bps(blkcg, tg->blkg.dev);
 tg->bps[WRITE] = blkcg_get_write_bps(blkcg, tg->blkg.dev);
 tg->iops[READ] = blkcg_get_read_iops(blkcg, tg->blkg.dev);
 tg->iops[WRITE] = blkcg_get_write_iops(blkcg, tg->blkg.dev);

 throtl_add_group_to_td_list(td, tg);
}
