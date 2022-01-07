
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_transaction_manager {int bm; int sm; scalar_t__ is_clone; } ;


 int EWOULDBLOCK ;
 int dm_bm_flush (int ) ;
 int dm_sm_commit (int ) ;

int dm_tm_pre_commit(struct dm_transaction_manager *tm)
{
 int r;

 if (tm->is_clone)
  return -EWOULDBLOCK;

 r = dm_sm_commit(tm->sm);
 if (r < 0)
  return r;

 return dm_bm_flush(tm->bm);
}
