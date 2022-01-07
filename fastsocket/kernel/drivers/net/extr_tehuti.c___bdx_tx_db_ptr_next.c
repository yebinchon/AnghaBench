
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdb {struct tx_map* start; struct tx_map* end; struct tx_map* wptr; struct tx_map* rptr; } ;
struct tx_map {int dummy; } ;


 int BDX_ASSERT (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void __bdx_tx_db_ptr_next(struct txdb *db, struct tx_map **pptr)
{
 BDX_ASSERT(db == ((void*)0) || pptr == ((void*)0));

 BDX_ASSERT(*pptr != db->rptr &&
     *pptr != db->wptr);

 BDX_ASSERT(*pptr < db->start ||
     *pptr >= db->end);

 ++*pptr;
 if (unlikely(*pptr == db->end))
  *pptr = db->start;
}
