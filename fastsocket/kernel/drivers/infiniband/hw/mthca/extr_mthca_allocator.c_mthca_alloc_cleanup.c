
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_alloc {int table; } ;


 int kfree (int ) ;

void mthca_alloc_cleanup(struct mthca_alloc *alloc)
{
 kfree(alloc->table);
}
