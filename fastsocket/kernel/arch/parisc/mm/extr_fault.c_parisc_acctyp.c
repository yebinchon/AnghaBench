
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITSSET ;
 unsigned long VM_EXEC ;
 unsigned long VM_READ ;
 unsigned long VM_WRITE ;
 int bit22set (unsigned int) ;
 int bits23_25set (unsigned int) ;
 int isGraphicsFlushRead (unsigned int) ;

__attribute__((used)) static unsigned long
parisc_acctyp(unsigned long code, unsigned int inst)
{
 if (code == 6 || code == 16)
     return VM_EXEC;

 switch (inst & 0xf0000000) {
 case 0x40000000:
 case 0x50000000:
  return VM_READ;

 case 0x60000000:
 case 0x70000000:
  return VM_WRITE;

 case 0x20000000:
 case 0x30000000:
  if (bit22set(inst))
   return VM_WRITE;

 case 0x0:
  if (bit22set(inst)) {
   if (isGraphicsFlushRead(inst))
    return VM_READ;
   return VM_WRITE;
  } else {
   if (bits23_25set(inst) == BITSSET)
    return VM_WRITE;
  }
  return VM_READ;
 }
 return VM_READ;
}
