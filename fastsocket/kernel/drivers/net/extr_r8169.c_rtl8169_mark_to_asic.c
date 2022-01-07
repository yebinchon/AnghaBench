
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct RxDesc {int opts1; } ;


 int DescOwn ;
 int RingEnd ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline void rtl8169_mark_to_asic(struct RxDesc *desc, u32 rx_buf_sz)
{
 u32 eor = le32_to_cpu(desc->opts1) & RingEnd;

 desc->opts1 = cpu_to_le32(DescOwn | eor | rx_buf_sz);
}
