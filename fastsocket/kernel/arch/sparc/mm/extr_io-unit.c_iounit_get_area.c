
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iounit_struct {unsigned long* rotor; unsigned long* limit; int * page_table; int bmap; } ;
typedef int iopte_t ;


 int IOD (char*) ;
 unsigned long IOUNIT_DMA_BASE ;
 int MKIOPTE (int ) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __iopte (scalar_t__) ;
 int __pa (unsigned long) ;
 unsigned long find_next_zero_bit (int ,unsigned long,unsigned long) ;
 scalar_t__ iopte_val (int ) ;
 int panic (char*,unsigned long,int) ;
 int set_bit (unsigned long,int ) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static unsigned long iounit_get_area(struct iounit_struct *iounit, unsigned long vaddr, int size)
{
 int i, j, k, npages;
 unsigned long rotor, scan, limit;
 iopte_t iopte;

        npages = ((vaddr & ~PAGE_MASK) + size + (PAGE_SIZE-1)) >> PAGE_SHIFT;


 switch (npages) {
 case 1: i = 0x0231; break;
 case 2: i = 0x0132; break;
 default: i = 0x0213; break;
 }

 IOD(("iounit_get_area(%08lx,%d[%d])=", vaddr, size, npages));

next: j = (i & 15);
 rotor = iounit->rotor[j - 1];
 limit = iounit->limit[j];
 scan = rotor;
nexti: scan = find_next_zero_bit(iounit->bmap, limit, scan);
 if (scan + npages > limit) {
  if (limit != rotor) {
   limit = rotor;
   scan = iounit->limit[j - 1];
   goto nexti;
  }
  i >>= 4;
  if (!(i & 15))
   panic("iounit_get_area: Couldn't find free iopte slots for (%08lx,%d)\n", vaddr, size);
  goto next;
 }
 for (k = 1, scan++; k < npages; k++)
  if (test_bit(scan++, iounit->bmap))
   goto nexti;
 iounit->rotor[j - 1] = (scan < limit) ? scan : iounit->limit[j - 1];
 scan -= npages;
 iopte = MKIOPTE(__pa(vaddr & PAGE_MASK));
 vaddr = IOUNIT_DMA_BASE + (scan << PAGE_SHIFT) + (vaddr & ~PAGE_MASK);
 for (k = 0; k < npages; k++, iopte = __iopte(iopte_val(iopte) + 0x100), scan++) {
  set_bit(scan, iounit->bmap);
  iounit->page_table[scan] = iopte;
 }
 IOD(("%08lx\n", vaddr));
 return vaddr;
}
