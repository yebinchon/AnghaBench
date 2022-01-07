
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int qdio_siga_sync (struct qdio_q*,unsigned int,unsigned int) ;

__attribute__((used)) static inline int qdio_siga_sync_all(struct qdio_q *q)
{
 return qdio_siga_sync(q, ~0U, ~0U);
}
