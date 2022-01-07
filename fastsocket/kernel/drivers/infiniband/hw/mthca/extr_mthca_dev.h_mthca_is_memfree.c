
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int mthca_flags; } ;


 int MTHCA_FLAG_MEMFREE ;

__attribute__((used)) static inline int mthca_is_memfree(struct mthca_dev *dev)
{
 return dev->mthca_flags & MTHCA_FLAG_MEMFREE;
}
