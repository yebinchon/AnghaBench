
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int dummy; } ;
struct throtl_data {struct throtl_grp* root_tg; } ;
struct blkio_cgroup {int dummy; } ;


 int __throtl_tg_fill_dev_details (struct throtl_data*,struct throtl_grp*) ;
 struct blkio_cgroup blkio_root_cgroup ;
 int blkiocg_lookup_group (struct blkio_cgroup*,void*) ;
 struct throtl_grp* tg_of_blkg (int ) ;

__attribute__((used)) static struct
throtl_grp *throtl_find_tg(struct throtl_data *td, struct blkio_cgroup *blkcg)
{
 struct throtl_grp *tg = ((void*)0);
 void *key = td;





 if (blkcg == &blkio_root_cgroup)
  tg = td->root_tg;
 else
  tg = tg_of_blkg(blkiocg_lookup_group(blkcg, key));

 __throtl_tg_fill_dev_details(td, tg);
 return tg;
}
