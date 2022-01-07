
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_cie {unsigned long length; unsigned long cie_pointer; char version; char* augmentation; unsigned int code_alignment_factor; unsigned int return_address_reg; char encoding; unsigned char* instructions_end; int link; void* initial_instructions; int flags; int data_alignment_factor; } ;


 int DWARF_CIE_Z_AUGMENTATION ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UNWINDER_BUG () ;
 int UNWINDER_BUG_ON (int) ;
 unsigned int __raw_readb (void*) ;
 int dwarf_cie_list ;
 int dwarf_cie_lock ;
 int dwarf_read_leb128 (void*,int *) ;
 void* dwarf_read_uleb128 (void*,unsigned int*) ;
 struct dwarf_cie* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int dwarf_parse_cie(void *entry, void *p, unsigned long len,
      unsigned char *end)
{
 struct dwarf_cie *cie;
 unsigned long flags;
 int count;

 cie = kzalloc(sizeof(*cie), GFP_KERNEL);
 if (!cie)
  return -ENOMEM;

 cie->length = len;







 cie->cie_pointer = (unsigned long)entry;

 cie->version = *(char *)p++;
 UNWINDER_BUG_ON(cie->version != 1);

 cie->augmentation = p;
 p += strlen(cie->augmentation) + 1;

 count = dwarf_read_uleb128(p, &cie->code_alignment_factor);
 p += count;

 count = dwarf_read_leb128(p, &cie->data_alignment_factor);
 p += count;





 if (cie->version == 1) {
  cie->return_address_reg = __raw_readb(p);
  p++;
 } else {
  count = dwarf_read_uleb128(p, &cie->return_address_reg);
  p += count;
 }

 if (cie->augmentation[0] == 'z') {
  unsigned int length, count;
  cie->flags |= DWARF_CIE_Z_AUGMENTATION;

  count = dwarf_read_uleb128(p, &length);
  p += count;

  UNWINDER_BUG_ON((unsigned char *)p > end);

  cie->initial_instructions = p + length;
  cie->augmentation++;
 }

 while (*cie->augmentation) {




  if (*cie->augmentation == 'L') {
   p++;
   cie->augmentation++;
  } else if (*cie->augmentation == 'R') {





   cie->encoding = *(char *)p++;
   cie->augmentation++;
  } else if (*cie->augmentation == 'P') {





   UNWINDER_BUG();
  } else if (*cie->augmentation == 'S') {
   UNWINDER_BUG();
  } else {




   p = cie->initial_instructions;
   UNWINDER_BUG_ON(!p);
   break;
  }
 }

 cie->initial_instructions = p;
 cie->instructions_end = end;


 spin_lock_irqsave(&dwarf_cie_lock, flags);
 list_add_tail(&cie->link, &dwarf_cie_list);
 spin_unlock_irqrestore(&dwarf_cie_lock, flags);

 return 0;
}
