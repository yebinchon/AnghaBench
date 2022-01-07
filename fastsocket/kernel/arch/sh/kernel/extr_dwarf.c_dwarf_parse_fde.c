
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct dwarf_fde {unsigned long length; unsigned long cie_pointer; unsigned char* end; int link; void* instructions; struct dwarf_cie* cie; int address_range; int initial_location; } ;
struct dwarf_cie {int encoding; int flags; } ;


 int DWARF_CIE_Z_AUGMENTATION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dwarf_fde_list ;
 int dwarf_fde_lock ;
 struct dwarf_cie* dwarf_lookup_cie (unsigned long) ;
 int dwarf_read_addr (void*,int *) ;
 int dwarf_read_encoded_value (void*,int *,int) ;
 int dwarf_read_uleb128 (void*,unsigned int*) ;
 struct dwarf_fde* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dwarf_parse_fde(void *entry, u32 entry_type,
      void *start, unsigned long len,
      unsigned char *end)
{
 struct dwarf_fde *fde;
 struct dwarf_cie *cie;
 unsigned long flags;
 int count;
 void *p = start;

 fde = kzalloc(sizeof(*fde), GFP_KERNEL);
 if (!fde)
  return -ENOMEM;

 fde->length = len;





 fde->cie_pointer = (unsigned long)(p - entry_type - 4);

 cie = dwarf_lookup_cie(fde->cie_pointer);
 fde->cie = cie;

 if (cie->encoding)
  count = dwarf_read_encoded_value(p, &fde->initial_location,
       cie->encoding);
 else
  count = dwarf_read_addr(p, &fde->initial_location);

 p += count;

 if (cie->encoding)
  count = dwarf_read_encoded_value(p, &fde->address_range,
       cie->encoding & 0x0f);
 else
  count = dwarf_read_addr(p, &fde->address_range);

 p += count;

 if (fde->cie->flags & DWARF_CIE_Z_AUGMENTATION) {
  unsigned int length;
  count = dwarf_read_uleb128(p, &length);
  p += count + length;
 }


 fde->instructions = p;
 fde->end = end;


 spin_lock_irqsave(&dwarf_fde_lock, flags);
 list_add_tail(&fde->link, &dwarf_fde_list);
 spin_unlock_irqrestore(&dwarf_fde_lock, flags);

 return 0;
}
