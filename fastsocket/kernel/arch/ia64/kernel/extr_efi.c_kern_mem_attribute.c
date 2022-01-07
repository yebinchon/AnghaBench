
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kern_memdesc {int attribute; } ;


 int EFI_MEMORY_WB ;
 int efi_mem_attribute (unsigned long,unsigned long) ;
 int kern_memmap ;
 struct kern_memdesc* kern_memory_descriptor (unsigned long) ;
 unsigned long kmd_end (struct kern_memdesc*) ;

u64
kern_mem_attribute (unsigned long phys_addr, unsigned long size)
{
 unsigned long end = phys_addr + size;
 struct kern_memdesc *md;
 u64 attr;





 if (!kern_memmap) {
  attr = efi_mem_attribute(phys_addr, size);
  if (attr & EFI_MEMORY_WB)
   return EFI_MEMORY_WB;
  return 0;
 }

 md = kern_memory_descriptor(phys_addr);
 if (!md)
  return 0;

 attr = md->attribute;
 do {
  unsigned long md_end = kmd_end(md);

  if (end <= md_end)
   return attr;

  md = kern_memory_descriptor(md_end);
  if (!md || md->attribute != attr)
   return 0;
 } while (md);
 return 0;
}
