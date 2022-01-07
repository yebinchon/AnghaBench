
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blackfin_flush_data {int end; int start; } ;


 int blackfin_dcache_invalidate_range (unsigned long,unsigned long) ;
 int blackfin_icache_flush_range (int ,int ) ;

__attribute__((used)) static void ipi_flush_icache(void *info)
{
 struct blackfin_flush_data *fdata = info;


 blackfin_dcache_invalidate_range((unsigned long)fdata,
      (unsigned long)fdata + sizeof(*fdata));

 blackfin_icache_flush_range(fdata->start, fdata->end);
}
