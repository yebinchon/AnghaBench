
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOOT_MEM_RAM ;
 int CHUNK_SIZE ;
 scalar_t__ CKSEG0 ;
 unsigned long CKSEG1 ;
 int add_memory_region (int ,unsigned long,int ) ;
 scalar_t__ mem_err ;
 int memcpy (void*,...) ;

__attribute__((used)) static inline void pmax_setup_memory_region(void)
{
 volatile unsigned char *memory_page, dummy;
 char old_handler[0x80];
 extern char genexcept_early;


 memcpy(&old_handler, (void *)(CKSEG0 + 0x80), 0x80);
 memcpy((void *)(CKSEG0 + 0x80), &genexcept_early, 0x80);






 for (memory_page = (unsigned char *)CKSEG1 + CHUNK_SIZE;
      mem_err == 0 && memory_page < (unsigned char *)CKSEG1 + 0x1e00000;
      memory_page += CHUNK_SIZE) {
  dummy = *memory_page;
 }
 memcpy((void *)(CKSEG0 + 0x80), &old_handler, 0x80);

 add_memory_region(0, (unsigned long)memory_page - CKSEG1 - CHUNK_SIZE,
     BOOT_MEM_RAM);
}
