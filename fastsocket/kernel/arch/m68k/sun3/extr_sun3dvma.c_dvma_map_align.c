
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 unsigned long DVMA_PAGE_MASK ;
 int DVMA_PAGE_SIZE ;
 unsigned long PAGE_MASK ;
 int dvma_map_iommu (unsigned long,unsigned long,int) ;
 unsigned long get_baddr (int,int) ;
 int printk (char*,unsigned long,unsigned long,...) ;

inline unsigned long dvma_map_align(unsigned long kaddr, int len, int align)
{

 unsigned long baddr;
 unsigned long off;

 if(!len)
  len = 0x800;

 if(!kaddr || !len) {


  return 0;
 }





 off = kaddr & ~DVMA_PAGE_MASK;
 kaddr &= PAGE_MASK;
 len += off;
 len = ((len + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

 if(align == 0)
  align = DVMA_PAGE_SIZE;
 else
  align = ((align + (DVMA_PAGE_SIZE-1)) & DVMA_PAGE_MASK);

 baddr = get_baddr(len, align);


 if(!dvma_map_iommu(kaddr, baddr, len))
  return (baddr + off);

 printk("dvma_map failed kaddr %lx baddr %lx len %x\n", kaddr, baddr, len);
 BUG();
 return 0;
}
