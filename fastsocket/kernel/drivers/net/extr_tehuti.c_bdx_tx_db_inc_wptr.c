
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {scalar_t__ wptr; scalar_t__ rptr; } ;


 int BDX_ASSERT (int) ;
 int __bdx_tx_db_ptr_next (struct txdb*,scalar_t__*) ;

__attribute__((used)) static inline void bdx_tx_db_inc_wptr(struct txdb *db)
{
 __bdx_tx_db_ptr_next(db, &db->wptr);
 BDX_ASSERT(db->rptr == db->wptr);

}
