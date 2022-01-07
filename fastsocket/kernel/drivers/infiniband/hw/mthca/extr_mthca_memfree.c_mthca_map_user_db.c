
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct mthca_user_db_table {int mutex; TYPE_2__* page; } ;
struct mthca_uar {int dummy; } ;
struct TYPE_5__ {int uarc_size; } ;
struct mthca_dev {int pdev; TYPE_1__ uar_table; } ;
struct TYPE_7__ {int mm; } ;
struct TYPE_6__ {int refcount; int uvirt; int mem; } ;


 int EINVAL ;
 int MTHCA_DB_REC_PER_PAGE ;
 int MTHCA_ICM_PAGE_SIZE ;
 int PAGE_MASK ;
 int PCI_DMA_TODEVICE ;
 TYPE_3__* current ;
 int get_user_pages (TYPE_3__*,int ,int,int,int,int ,struct page**,int *) ;
 int mthca_MAP_ICM_page (struct mthca_dev*,int ,int ) ;
 int mthca_is_memfree (struct mthca_dev*) ;
 int mthca_uarc_virt (struct mthca_dev*,struct mthca_uar*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_map_sg (int ,int *,int,int ) ;
 int pci_unmap_sg (int ,int *,int,int ) ;
 int put_page (struct page*) ;
 int sg_dma_address (int *) ;
 struct page* sg_page (int *) ;
 int sg_set_page (int *,struct page*,int ,int) ;

int mthca_map_user_db(struct mthca_dev *dev, struct mthca_uar *uar,
        struct mthca_user_db_table *db_tab, int index, u64 uaddr)
{
 struct page *pages[1];
 int ret = 0;
 int i;

 if (!mthca_is_memfree(dev))
  return 0;

 if (index < 0 || index > dev->uar_table.uarc_size / 8)
  return -EINVAL;

 mutex_lock(&db_tab->mutex);

 i = index / MTHCA_DB_REC_PER_PAGE;

 if ((db_tab->page[i].refcount >= MTHCA_DB_REC_PER_PAGE) ||
     (db_tab->page[i].uvirt && db_tab->page[i].uvirt != uaddr) ||
     (uaddr & 4095)) {
  ret = -EINVAL;
  goto out;
 }

 if (db_tab->page[i].refcount) {
  ++db_tab->page[i].refcount;
  goto out;
 }

 ret = get_user_pages(current, current->mm, uaddr & PAGE_MASK, 1, 1, 0,
        pages, ((void*)0));
 if (ret < 0)
  goto out;

 sg_set_page(&db_tab->page[i].mem, pages[0], MTHCA_ICM_PAGE_SIZE,
   uaddr & ~PAGE_MASK);

 ret = pci_map_sg(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
 if (ret < 0) {
  put_page(pages[0]);
  goto out;
 }

 ret = mthca_MAP_ICM_page(dev, sg_dma_address(&db_tab->page[i].mem),
     mthca_uarc_virt(dev, uar, i));
 if (ret) {
  pci_unmap_sg(dev->pdev, &db_tab->page[i].mem, 1, PCI_DMA_TODEVICE);
  put_page(sg_page(&db_tab->page[i].mem));
  goto out;
 }

 db_tab->page[i].uvirt = uaddr;
 db_tab->page[i].refcount = 1;

out:
 mutex_unlock(&db_tab->mutex);
 return ret;
}
