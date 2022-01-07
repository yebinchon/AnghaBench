
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int mmr ;






 int EFAULT ;
 unsigned long SYSMMR_BASE ;
 int bfin_read16 (char*) ;
 int bfin_read32 (char*) ;
 int dma_memcpy (char*,char*,int) ;
 int isram_memcpy (char*,char*,int) ;
 int memcpy (char*,int *,int) ;
 int probe_kernel_read (char*,char*,int) ;
 int validate_memory_access_address (unsigned long,int) ;

__attribute__((used)) static int bfin_probe_kernel_read(char *dst, char *src, int size)
{
 unsigned long lsrc = (unsigned long)src;
 int mem_type;

 mem_type = validate_memory_access_address(lsrc, size);
 if (mem_type < 0)
  return mem_type;

 if (lsrc >= SYSMMR_BASE) {
  if (size == 2 && lsrc % 2 == 0) {
   u16 mmr = bfin_read16(src);
   memcpy(dst, &mmr, sizeof(mmr));
   return 0;
  } else if (size == 4 && lsrc % 4 == 0) {
   u32 mmr = bfin_read32(src);
   memcpy(dst, &mmr, sizeof(mmr));
   return 0;
  }
 } else {
  switch (mem_type) {
   case 131:
   case 130:
    return probe_kernel_read(dst, src, size);

   case 129:
    if (dma_memcpy(dst, src, size))
     return 0;
    break;
   case 128:
    if (isram_memcpy(dst, src, size))
     return 0;
    break;
  }
 }

 return -EFAULT;
}
