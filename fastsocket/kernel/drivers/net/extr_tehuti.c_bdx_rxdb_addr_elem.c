
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxdb {int nelem; void* elems; } ;


 int BDX_ASSERT (int) ;

__attribute__((used)) static inline void *bdx_rxdb_addr_elem(struct rxdb *db, int n)
{
 BDX_ASSERT((n < 0) || (n >= db->nelem));
 return db->elems + n;
}
