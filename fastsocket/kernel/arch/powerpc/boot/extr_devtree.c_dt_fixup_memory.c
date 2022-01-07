
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int nsize ;
typedef int naddr ;


 void* create_node (int *,char*) ;
 int fatal (char*,int) ;
 void* finddevice (char*) ;
 scalar_t__ getprop (void*,char*,int*,int) ;
 int printf (char*,unsigned long) ;
 int setprop (void*,char*,int*,int) ;
 int setprop_str (void*,char*,char*) ;

void dt_fixup_memory(u64 start, u64 size)
{
 void *root, *memory;
 int naddr, nsize, i;
 u32 memreg[4];

 root = finddevice("/");
 if (getprop(root, "#address-cells", &naddr, sizeof(naddr)) < 0)
  naddr = 2;
 if (naddr < 1 || naddr > 2)
  fatal("Can't cope with #address-cells == %d in /\n\r", naddr);

 if (getprop(root, "#size-cells", &nsize, sizeof(nsize)) < 0)
  nsize = 1;
 if (nsize < 1 || nsize > 2)
  fatal("Can't cope with #size-cells == %d in /\n\r", nsize);

 i = 0;
 if (naddr == 2)
  memreg[i++] = start >> 32;
 memreg[i++] = start & 0xffffffff;
 if (nsize == 2)
  memreg[i++] = size >> 32;
 memreg[i++] = size & 0xffffffff;

 memory = finddevice("/memory");
 if (! memory) {
  memory = create_node(((void*)0), "memory");
  setprop_str(memory, "device_type", "memory");
 }

 printf("Memory <- <0x%x", memreg[0]);
 for (i = 1; i < (naddr + nsize); i++)
  printf(" 0x%x", memreg[i]);
 printf("> (%ldMB)\n\r", (unsigned long)(size >> 20));

 setprop(memory, "reg", memreg, (naddr + nsize)*sizeof(u32));
}
