
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int mmr ;






 int EFAULT ;
 unsigned long SYSMMR_BASE ;
 int bfin_write16 (char*,int ) ;
 int bfin_write32 (char*,int ) ;
 int dma_memcpy (char*,char*,int) ;
 int isram_memcpy (char*,char*,int) ;
 int memcpy (int *,char*,int) ;
 int probe_kernel_write (char*,char*,int) ;
 int validate_memory_access_address (unsigned long,int) ;

__attribute__((used)) static int bfin_probe_kernel_write(char *dst, char *src, int size)
{
 unsigned long ldst = (unsigned long)dst;
 int mem_type;

 mem_type = validate_memory_access_address(ldst, size);
 if (mem_type < 0)
  return mem_type;

 if (ldst >= SYSMMR_BASE) {
  if (size == 2 && ldst % 2 == 0) {
   u16 mmr;
   memcpy(&mmr, src, sizeof(mmr));
   bfin_write16(dst, mmr);
   return 0;
  } else if (size == 4 && ldst % 4 == 0) {
   u32 mmr;
   memcpy(&mmr, src, sizeof(mmr));
   bfin_write32(dst, mmr);
   return 0;
  }
 } else {
  switch (mem_type) {
   case 131:
   case 130:
    return probe_kernel_write(dst, src, size);

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
