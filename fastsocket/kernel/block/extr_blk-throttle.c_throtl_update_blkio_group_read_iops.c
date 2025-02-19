
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {unsigned int* iops; } ;
struct throtl_data {int dummy; } ;
struct blkio_group {int dummy; } ;


 size_t READ ;
 struct throtl_grp* tg_of_blkg (struct blkio_group*) ;
 int throtl_update_blkio_group_common (struct throtl_data*,struct throtl_grp*) ;

__attribute__((used)) static void throtl_update_blkio_group_read_iops(void *key,
   struct blkio_group *blkg, unsigned int read_iops)
{
 struct throtl_data *td = key;
 struct throtl_grp *tg = tg_of_blkg(blkg);

 tg->iops[READ] = read_iops;
 throtl_update_blkio_group_common(td, tg);
}
