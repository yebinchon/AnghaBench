
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct throtl_grp {int * bps; } ;
struct throtl_data {int dummy; } ;
struct blkio_group {int dummy; } ;


 size_t WRITE ;
 struct throtl_grp* tg_of_blkg (struct blkio_group*) ;
 int throtl_update_blkio_group_common (struct throtl_data*,struct throtl_grp*) ;

__attribute__((used)) static void throtl_update_blkio_group_write_bps(void *key,
    struct blkio_group *blkg, u64 write_bps)
{
 struct throtl_data *td = key;
 struct throtl_grp *tg = tg_of_blkg(blkg);

 tg->bps[WRITE] = write_bps;
 throtl_update_blkio_group_common(td, tg);
}
