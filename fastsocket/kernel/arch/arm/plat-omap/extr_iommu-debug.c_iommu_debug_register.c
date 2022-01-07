
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct iommu {int nr_tlb_entries; int name; int dev; } ;
struct device {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUG_ADD_FILE (int ) ;
 int DEBUG_ADD_FILE_RO (int ) ;
 int EINVAL ;
 int ENOMEM ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 struct dentry* debugfs_create_u8 (char*,int,struct dentry*,int *) ;
 int iommu_debug_root ;
 int mem ;
 int mmap ;
 int pagetable ;
 struct iommu* platform_get_drvdata (struct platform_device*) ;
 int regs ;
 int tlb ;
 struct platform_device* to_platform_device (struct device*) ;
 int ver ;

__attribute__((used)) static int iommu_debug_register(struct device *dev, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct iommu *obj = platform_get_drvdata(pdev);
 struct dentry *d, *parent;

 if (!obj || !obj->dev)
  return -EINVAL;

 d = debugfs_create_dir(obj->name, iommu_debug_root);
 if (!d)
  return -ENOMEM;
 parent = d;

 d = debugfs_create_u8("nr_tlb_entries", 400, parent,
         (u8 *)&obj->nr_tlb_entries);
 if (!d)
  return -ENOMEM;

 DEBUG_ADD_FILE_RO(ver);
 DEBUG_ADD_FILE_RO(regs);
 DEBUG_ADD_FILE_RO(tlb);
 DEBUG_ADD_FILE(pagetable);
 DEBUG_ADD_FILE_RO(mmap);
 DEBUG_ADD_FILE(mem);

 return 0;
}
