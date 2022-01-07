
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; int in_use; } ;
struct t4_wq {TYPE_1__ sq; } ;



__attribute__((used)) static inline u32 t4_sq_avail(struct t4_wq *wq)
{
 return wq->sq.size - 1 - wq->sq.in_use;
}
