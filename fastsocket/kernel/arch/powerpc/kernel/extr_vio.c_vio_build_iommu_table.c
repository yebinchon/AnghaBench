
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;
struct vio_dev {TYPE_2__ dev; } ;
struct iommu_table {unsigned long it_size; unsigned long it_offset; int it_blocksize; int it_type; scalar_t__ it_busno; int it_index; } ;


 int FW_FEATURE_ISERIES ;
 int GFP_KERNEL ;
 unsigned long IOMMU_PAGE_SHIFT ;
 int TCE_VB ;
 scalar_t__ firmware_has_feature (int ) ;
 struct iommu_table* iommu_init_table (struct iommu_table*,int) ;
 struct iommu_table* kzalloc (int,int ) ;
 unsigned char* of_get_property (int ,char*,int *) ;
 int of_parse_dma_window (int ,unsigned char const*,int *,unsigned long*,unsigned long*) ;
 struct iommu_table* vio_build_iommu_table_iseries (struct vio_dev*) ;

__attribute__((used)) static struct iommu_table *vio_build_iommu_table(struct vio_dev *dev)
{
 const unsigned char *dma_window;
 struct iommu_table *tbl;
 unsigned long offset, size;

 if (firmware_has_feature(FW_FEATURE_ISERIES))
  return vio_build_iommu_table_iseries(dev);

 dma_window = of_get_property(dev->dev.archdata.of_node,
      "ibm,my-dma-window", ((void*)0));
 if (!dma_window)
  return ((void*)0);

 tbl = kzalloc(sizeof(*tbl), GFP_KERNEL);
 if (tbl == ((void*)0))
  return ((void*)0);

 of_parse_dma_window(dev->dev.archdata.of_node, dma_window,
       &tbl->it_index, &offset, &size);


 tbl->it_size = size >> IOMMU_PAGE_SHIFT;

 tbl->it_offset = offset >> IOMMU_PAGE_SHIFT;
 tbl->it_busno = 0;
 tbl->it_type = TCE_VB;
 tbl->it_blocksize = 16;

 return iommu_init_table(tbl, -1);
}
