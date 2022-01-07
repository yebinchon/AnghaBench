
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cnic_dma {int num_pages; int* pg_map_arr; scalar_t__ pgtbl; } ;
struct cnic_dev {int dummy; } ;
typedef int __le32 ;


 int cpu_to_le32 (int) ;

__attribute__((used)) static void cnic_setup_page_tbl_le(struct cnic_dev *dev, struct cnic_dma *dma)
{
 int i;
 __le32 *page_table = (__le32 *) dma->pgtbl;

 for (i = 0; i < dma->num_pages; i++) {

  *page_table = cpu_to_le32(dma->pg_map_arr[i] & 0xffffffff);
  page_table++;
  *page_table = cpu_to_le32((u64) dma->pg_map_arr[i] >> 32);
  page_table++;
 }
}
