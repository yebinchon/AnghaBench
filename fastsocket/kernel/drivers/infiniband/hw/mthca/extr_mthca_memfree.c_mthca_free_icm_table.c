
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_icm_table {int num_icm; int coherent; scalar_t__* icm; scalar_t__ virt; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_ICM_PAGE_SIZE ;
 int MTHCA_TABLE_CHUNK_SIZE ;
 int kfree (struct mthca_icm_table*) ;
 int mthca_UNMAP_ICM (struct mthca_dev*,scalar_t__,int) ;
 int mthca_free_icm (struct mthca_dev*,scalar_t__,int ) ;

void mthca_free_icm_table(struct mthca_dev *dev, struct mthca_icm_table *table)
{
 int i;

 for (i = 0; i < table->num_icm; ++i)
  if (table->icm[i]) {
   mthca_UNMAP_ICM(dev,
     table->virt + i * MTHCA_TABLE_CHUNK_SIZE,
     MTHCA_TABLE_CHUNK_SIZE / MTHCA_ICM_PAGE_SIZE);
   mthca_free_icm(dev, table->icm[i], table->coherent);
  }

 kfree(table);
}
