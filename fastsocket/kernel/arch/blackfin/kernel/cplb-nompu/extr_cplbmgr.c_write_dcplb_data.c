
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; unsigned long data; } ;


 scalar_t__ DCPLB_ADDR0 ;
 scalar_t__ DCPLB_DATA0 ;
 int _disable_dcplb () ;
 int _enable_dcplb () ;
 int bfin_write32 (scalar_t__,unsigned long) ;
 TYPE_1__** dcplb_tbl ;

__attribute__((used)) static inline void write_dcplb_data(int cpu, int idx, unsigned long data,
        unsigned long addr)
{
 _disable_dcplb();
 bfin_write32(DCPLB_DATA0 + idx * 4, data);
 bfin_write32(DCPLB_ADDR0 + idx * 4, addr);
 _enable_dcplb();





}
