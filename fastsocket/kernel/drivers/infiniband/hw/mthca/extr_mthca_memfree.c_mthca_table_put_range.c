
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_icm_table {int obj_size; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_TABLE_CHUNK_SIZE ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mthca_table_put (struct mthca_dev*,struct mthca_icm_table*,int) ;

void mthca_table_put_range(struct mthca_dev *dev, struct mthca_icm_table *table,
      int start, int end)
{
 int i;

 if (!mthca_is_memfree(dev))
  return;

 for (i = start; i <= end; i += MTHCA_TABLE_CHUNK_SIZE / table->obj_size)
  mthca_table_put(dev, table, i);
}
