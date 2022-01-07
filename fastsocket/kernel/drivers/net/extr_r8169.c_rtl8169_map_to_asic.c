
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct RxDesc {int addr; } ;
typedef int dma_addr_t ;


 int cpu_to_le64 (int ) ;
 int rtl8169_mark_to_asic (struct RxDesc*,int ) ;
 int wmb () ;

__attribute__((used)) static inline void rtl8169_map_to_asic(struct RxDesc *desc, dma_addr_t mapping,
           u32 rx_buf_sz)
{
 desc->addr = cpu_to_le64(mapping);
 wmb();
 rtl8169_mark_to_asic(desc, rx_buf_sz);
}
