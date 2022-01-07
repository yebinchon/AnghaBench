
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;






 int UNWINDER_BUG () ;
 int __raw_writel (unsigned long,unsigned long*) ;
 unsigned long get_unaligned (int *) ;
 int pr_debug (char*,char) ;

__attribute__((used)) static int dwarf_read_encoded_value(char *addr, unsigned long *val,
        char encoding)
{
 unsigned long decoded_addr = 0;
 int count = 0;

 switch (encoding & 0x70) {
 case 131:
  break;
 case 130:
  decoded_addr = (unsigned long)addr;
  break;
 default:
  pr_debug("encoding=0x%x\n", (encoding & 0x70));
  UNWINDER_BUG();
 }

 if ((encoding & 0x07) == 0x00)
  encoding |= 128;

 switch (encoding & 0x0f) {
 case 129:
 case 128:
  count += 4;
  decoded_addr += get_unaligned((u32 *)addr);
  __raw_writel(decoded_addr, val);
  break;
 default:
  pr_debug("encoding=0x%x\n", encoding);
  UNWINDER_BUG();
 }

 return count;
}
