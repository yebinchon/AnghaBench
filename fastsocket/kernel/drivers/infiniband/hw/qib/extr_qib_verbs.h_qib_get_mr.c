
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_mregion {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void qib_get_mr(struct qib_mregion *mr)
{
 atomic_inc(&mr->refcount);
}
