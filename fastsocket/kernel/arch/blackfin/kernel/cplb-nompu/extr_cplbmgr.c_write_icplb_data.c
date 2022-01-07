
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; unsigned long data; } ;


 scalar_t__ ICPLB_ADDR0 ;
 scalar_t__ ICPLB_DATA0 ;
 int _disable_icplb () ;
 int _enable_icplb () ;
 int bfin_write32 (scalar_t__,unsigned long) ;
 TYPE_1__** icplb_tbl ;

__attribute__((used)) static inline void write_icplb_data(int cpu, int idx, unsigned long data,
        unsigned long addr)
{
 _disable_icplb();
 bfin_write32(ICPLB_DATA0 + idx * 4, data);
 bfin_write32(ICPLB_ADDR0 + idx * 4, addr);
 _enable_icplb();





}
