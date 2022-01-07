
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_use; } ;
struct t4_wq {TYPE_1__ rq; } ;



__attribute__((used)) static inline int t4_rqes_posted(struct t4_wq *wq)
{
 return wq->rq.in_use;
}
