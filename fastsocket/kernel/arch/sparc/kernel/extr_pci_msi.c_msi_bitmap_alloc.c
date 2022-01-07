
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {unsigned long msi_num; int msi_bitmap; } ;


 int BUG_ON (unsigned long) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (unsigned long,int ) ;

__attribute__((used)) static int msi_bitmap_alloc(struct pci_pbm_info *pbm)
{
 unsigned long size, bits_per_ulong;

 bits_per_ulong = sizeof(unsigned long) * 8;
 size = (pbm->msi_num + (bits_per_ulong - 1)) & ~(bits_per_ulong - 1);
 size /= 8;
 BUG_ON(size % sizeof(unsigned long));

 pbm->msi_bitmap = kzalloc(size, GFP_KERNEL);
 if (!pbm->msi_bitmap)
  return -ENOMEM;

 return 0;
}
