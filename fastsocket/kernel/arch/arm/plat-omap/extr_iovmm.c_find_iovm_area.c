
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iovm_struct {int dummy; } ;
struct iommu {int mmap_lock; } ;


 struct iovm_struct* __find_iovm_area (struct iommu*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct iovm_struct *find_iovm_area(struct iommu *obj, u32 da)
{
 struct iovm_struct *area;

 mutex_lock(&obj->mmap_lock);
 area = __find_iovm_area(obj, da);
 mutex_unlock(&obj->mmap_lock);

 return area;
}
