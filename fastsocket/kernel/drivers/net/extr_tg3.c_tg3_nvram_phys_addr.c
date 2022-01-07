
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {scalar_t__ nvram_jedecnum; int nvram_pagesize; } ;


 int ATMEL_AT45DB0X1B_PAGE_POS ;
 int FLASH ;
 scalar_t__ JEDEC_ATMEL ;
 int NO_NVRAM_ADDR_TRANS ;
 int NVRAM ;
 int NVRAM_BUFFERED ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;

__attribute__((used)) static u32 tg3_nvram_phys_addr(struct tg3 *tp, u32 addr)
{
 if (tg3_flag(tp, NVRAM) &&
     tg3_flag(tp, NVRAM_BUFFERED) &&
     tg3_flag(tp, FLASH) &&
     !tg3_flag(tp, NO_NVRAM_ADDR_TRANS) &&
     (tp->nvram_jedecnum == JEDEC_ATMEL))

  addr = ((addr / tp->nvram_pagesize) <<
   ATMEL_AT45DB0X1B_PAGE_POS) +
         (addr % tp->nvram_pagesize);

 return addr;
}
