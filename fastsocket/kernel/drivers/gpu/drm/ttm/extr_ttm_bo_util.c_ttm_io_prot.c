
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int pgprot_t ;
struct TYPE_2__ {int x86; } ;


 int TTM_PL_FLAG_CACHED ;
 int TTM_PL_FLAG_UNCACHED ;
 int TTM_PL_FLAG_WC ;
 int _PAGE_GUARDED ;
 int _PAGE_NO_CACHE ;
 TYPE_1__ boot_cpu_data ;
 int pgprot_noncached (int ) ;
 int pgprot_val (int ) ;
 int pgprot_writecombine (int ) ;

pgprot_t ttm_io_prot(uint32_t caching_flags, pgprot_t tmp)
{

 if (caching_flags & TTM_PL_FLAG_WC)
  tmp = pgprot_writecombine(tmp);
 else if (boot_cpu_data.x86 > 3)
  tmp = pgprot_noncached(tmp);
 return tmp;
}
