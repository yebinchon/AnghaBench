
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma_device {int comp; int refcount; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;

__attribute__((used)) static inline void cma_deref_dev(struct cma_device *cma_dev)
{
 if (atomic_dec_and_test(&cma_dev->refcount))
  complete(&cma_dev->comp);
}
